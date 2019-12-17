#include "server/zone/custom/managers/CustomTefManager.h"

#include <memory>

#include "server/zone/managers/combat/CombatManager.h"
#include "server/zone/managers/creature/PetManager.h"
#include "server/zone/managers/faction/FactionManager.h"
#include "server/zone/objects/creature/ai/AiAgent.h"
#include "server/zone/objects/group/GroupObject.h"
#include "server/zone/objects/guild/GuildObject.h"
#include "server/zone/objects/player/FactionStatus.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/tangible/TangibleObject.h"
#include "server/zone/objects/intangible/PetControlDevice.h"
#include "templates/faction/Factions.h"
#include "templates/params/creature/CreatureFlag.h"
#include "templates/SharedObjectTemplate.h"
#include "templates/installation/SharedInstallationObjectTemplate.h"

// RM_TODO : Move static methods to a helper util function
static bool areSameFaction(TangibleObject& attacker, TangibleObject& defender) {
	const int attackerFaction = attacker.getFaction();
	const int defenderFaction = defender.getFaction();
	return attackerFaction == defenderFaction;
}

static bool areOpposingFactions(TangibleObject& attacker, TangibleObject& defender) {
	const int attackerFaction = attacker.getFaction();
	const int defenderFaction = defender.getFaction();
	return attackerFaction != defenderFaction
		&& attackerFaction != Factions::FACTIONNEUTRAL
		&& defenderFaction != Factions::FACTIONNEUTRAL;
}

static bool isPvpAttackable(CreatureObject& player) {
	PlayerObject* playerObj = player.getPlayerObject();
	return !player.isNeutral()
		&& (player.getFactionStatus() == FactionStatus::OVERT
		 || playerObj->hasPvpTefOnly());
}

static int getOrGenerateTefId(CreatureObject& player) {
    uint32 id = player.getTefId();
    if (id == CreatureObject::INVALID_TEF_ID) {
        id = player.generateTefId();
        player.setTefId(id, FactionManager::TEFTIMER);
    }

    return id;
}

static void setGroupTef(CreatureObject& defender, CreatureObject& attacker) {
	const uint32 atkId = getOrGenerateTefId(attacker);
	const uint32 defId = getOrGenerateTefId(defender);
    // Ensures player adds attackable group if not in group
	defender.addGroupTef(atkId);

	ManagedReference<GroupObject*> group = defender.getGroup();
	if (group == nullptr) {
		return;
	}

	Locker locker(group);
	for (int idx = 0; idx < group->getGroupSize(); ++idx) {
		// RM_TODO : Do we need to lock member?
		ManagedReference<CreatureObject*> member = group->getGroupMember(idx);
		// Ensure we have a valid member and is not the current defender
		if (member == nullptr || !member->isPlayerCreature() || member == &defender) {
			continue;
		}

        PlayerObject* memPlayer = member->getPlayerObject();
        if (memPlayer == nullptr) {
        	continue;
        }

        // Only set tef id if invalid
        if (member->getTefId() == CreatureObject::INVALID_TEF_ID || (member->hasTefTimedOut() && !memPlayer->hasBhTef())) {
            member->setTefId(defId, FactionManager::TEFTIMER);
        }

		// Add attacker tef Id to attackable group list
		member->addGroupTef(atkId);
	}
}

static bool areSameGroup(CreatureObject& playerA, CreatureObject& playerB) {
	const uint64 groupAId = playerA.getGroupID();
	return groupAId != 0 && groupAId == playerB.getGroupID();
}

static bool validGroupTef(CreatureObject& defender, CreatureObject& attacker) {
	const uint32 atkId = attacker.getTefId();
	const uint32 defId = defender.getTefId();

	return defender.hasGroupTef(atkId) && attacker.hasGroupTef(defId);
}

static bool areSameGroupTef(CreatureObject& playerA, CreatureObject& playerB) {
	const uint32 playerAId = playerA.getTefId();

	return playerAId != CreatureObject::INVALID_TEF_ID
		&& playerAId == playerB.getTefId();
}

static void dumpGroupState(const String& tag, CreatureObject& defender,
						   CreatureObject& attacker) {
	PlayerObject* defPlayer = defender.getPlayerObject();
	PlayerObject* atkPlayer = attacker.getPlayerObject();
	const uint32 defId = defender.getTefId();
	const uint32 atkId = attacker.getTefId();
	attacker.sendSystemMessage(tag + " Defender: " + defender.getDisplayedName() + " hasBhTef: "
				   + String::valueOf(defPlayer->hasBhTef()) + " id: " + String::valueOf(defId)
				   + " hasGroupTef: " + (defender.hasGroupTef(atkId) ? "yes" : "no")
				   + " Attacker: " + attacker.getDisplayedName() + " hasBhTef: "
				   + String::valueOf(atkPlayer->hasBhTef()) + " id: " + String::valueOf(atkId)
				   + " hasGroupTef: " + (attacker.hasGroupTef(defId) ? "yes" : "no"));
}

CustomTefManager::CustomTefManager() {
	setLoggingName("CustomTefManager");
	setGlobalLogging(true);
	setLogging(true);
}

auto CustomTefManager::initialize() -> void {
	info("Loading CustomTefManager config file");

	std::unique_ptr<Lua> lua{new Lua()};
	lua->init();

	lua->runFile("scripts/custom_scripts/managers/custom_tef_manager.lua");

	// Load enabled
	isEnabled = lua->getGlobalInt("customTefEnabled") == 1;
	if (isEnabled) {
		info("Custom TEF Enabled");
	}
	isGroupTefEnabled = lua->getGlobalInt("customGroupTefEnabled") == 1;
	if (isGroupTefEnabled) {
		info("Custom Group TEF Enabled");
	}

	// Load perma overt
	LuaObject permaOvertObject = lua->getGlobalObject("customTefPermaOvert");
	if (permaOvertObject.isValidTable()) {
		for (int idx = 1; idx <= permaOvertObject.getTableSize(); ++idx) {
			const String skill = permaOvertObject.getStringAt(idx);
			permaOvertSkills.put(skill);
		}
	}
	permaOvertObject.pop();

	// Load TEF flag message
	tefMessage = lua->getGlobalString("customTefMessage");
}

auto CustomTefManager::enabled() const -> bool {
	return isEnabled;
}

auto CustomTefManager::isPermaOvert(CreatureObject* player) const -> bool {
	for (const auto& skill : permaOvertSkills) {
		if (player->hasSkill(skill)) {
			return true;
		}
	}
	return false;
}

auto CustomTefManager::isPermaOvert(const String& skill) const -> bool {
	return permaOvertSkills.contains(skill);
}

auto CustomTefManager::checkForTefs(CreatureObject* attacker,
									CreatureObject* defender,
									bool* shouldGcwTef,
									bool* shouldBhTef) -> void {
	if (attacker == nullptr || defender == nullptr) {
		return;
	}

	if (!attacker->isPlayerCreature()) {
		return;
	}

	// Never pvp TEF when neutral or same faction
	const bool defIsPlayer = defender->isPlayerCreature();
	if (!(*shouldGcwTef)
			&& areOpposingFactions(*attacker, *defender)
			&& !CombatManager::instance()->areInDuel(attacker, defender)) {
		*shouldGcwTef = defIsPlayer ? isPvpAttackable(*defender) : true;
	}

	// Don't need to check BH tef for NPC
	if (!defIsPlayer) {
		return;
	}

	if (!(*shouldBhTef)) {
		PlayerObject* const defPlayer= defender->getPlayerObject();

		if (isGroupTefEnabled && defPlayer->hasBhTef() && validGroupTef(*defender, *attacker)) {
			*shouldBhTef = true;
		} else if (attacker->hasBountyMissionFor(defender) || defender->hasBountyMissionFor(attacker)) {
			*shouldBhTef = true;

			// Only setup group tef on initial engage
			if (isGroupTefEnabled) {
				setGroupTef(*defender, *attacker);
				setGroupTef(*attacker, *defender);
			}
		}
	}
}

auto CustomTefManager::checkForTef(CreatureObject* healer,
								   CreatureObject* target) -> void {
	if (!healer->isPlayerCreature() || healer == target)
		return;

	PlayerObject* healPlayer = healer->getPlayerObject().get();
	if (healPlayer == nullptr)
		return;

	// Grab the pet's owner
	if (target->isPet()) {
		ManagedReference<CreatureObject*> owner = target->getLinkedCreature().get();
		if (owner != nullptr && owner->isPlayerCreature()) {
			target = owner;
		}
	}

	if (target->isPlayerCreature()) {
		PlayerObject* tarPlayer = target->getPlayerObject().get();

		if (CombatManager::instance()->areInDuel(healer, target)) {
			return;
		}

		if (!healer->isNeutral() && isPvpAttackable(*target)) {
			healPlayer->updateLastGcwPvpCombatActionTimestamp();
		}

		if (tarPlayer->hasBhTef()) {
			healPlayer->updateLastBhPvpCombatActionTimestamp();
		}
	}
}

auto CustomTefManager::isAggressiveTo(CreatureObject* defender,
									  CreatureObject* attacker) -> bool {
	PlayerObject* const defPlayer= defender->getPlayerObject();
	PlayerObject* const atkPlayer= attacker->getPlayerObject();

	if (defPlayer == nullptr || atkPlayer == nullptr)
		return false;

	if (defPlayer->isOnLoadScreen())
		return false;

	if (defender->hasPersonalEnemyFlag(attacker) && attacker->hasPersonalEnemyFlag(defender))
		return true;

	if (ConfigManager::instance()->getPvpMode() && defender->isPlayerCreature())
		return true;

	if (CombatManager::instance()->areInDuel(attacker, defender))
		return true;

	if (areSameGroup(*attacker, *defender)) {
		return false;
	}

	if (areOpposingFactions(*defender, *attacker) && isPvpAttackable(*defender)) {
		return true;
	}

	if (attacker->hasBountyMissionFor(defender) || (defPlayer->hasBhTef() && defender->hasBountyMissionFor(attacker))) {
		return true;
	}

	if (isGroupTefEnabled && defPlayer->hasBhTef() && validGroupTef(*defender, *attacker)) {
	    return true;
	}

	ManagedReference<GuildObject*> guildObject = defender->getGuildObject().get();
	if (guildObject != nullptr && guildObject->isInWaringGuild(attacker))
		return true;

	return false;
}

auto CustomTefManager::isAttackableBy(CreatureObject* defender,
									  TangibleObject* attacker,
									  bool bypassDeadCheck) -> bool {
	if (defender == nullptr || attacker == nullptr) {
		return false;
	}

	PlayerObject* const defPlayer= defender->getPlayerObject();

	if(defPlayer == nullptr)
		return false;

	if (defPlayer->isOnLoadScreen())
		return false;

	if ((!bypassDeadCheck && (defender->isDead() || (defender->isIncapacitated() && !defender->isFeigningDeath())))
			|| defender->isInvisible())
		return false;

	if (defender->getPvpStatusBitmask() == CreatureFlag::NONE)
		return false;

	if(attacker->getFaction() == 0 )
		return true;

	if(attacker->getFaction() == defender->getFaction())
		return false;

	if (!isPvpAttackable(*defender)) {
		return false;
	}

	// the other options are overt creature / overt tano  and covert/covert, covert tano, overt creature..  all are attackable
	return true;
}

auto CustomTefManager::isAttackableBy(CreatureObject* defender,
									  CreatureObject* attacker,
									  bool bypassDeadCheck) -> bool {
	if (defender == nullptr || attacker == nullptr) {
		return false;
	}

	if (attacker == defender)
		return false;

	if ((!bypassDeadCheck && defender->isDead()) || defender->isInvisible())
		return false;

	if (attacker->getZoneUnsafe() != defender->getZoneUnsafe())
		return false;

	if (defender->isPlayerCreature()) {
		PlayerObject* defPlayer = defender->getPlayerObject();
		if (defPlayer != nullptr) {
			if (defPlayer->isOnLoadScreen())
				return false;
			if (ConfigManager::instance()->getPvpMode())
				return true;
		}
	}

	if (attacker->isAiAgent()) {

		if (attacker->isPet()) {
			ManagedReference<PetControlDevice*> pcd = attacker->getControlDevice().get().castTo<PetControlDevice*>();
			if (pcd != nullptr && pcd->getPetType() == PetManager::FACTIONPET && defender->isNeutral()) {
				return false;
			}

			ManagedReference<CreatureObject*> owner = attacker->getLinkedCreature().get();

			if (owner == nullptr)
				return false;

			return defender->isAttackableBy(owner);
		}

		if(!attacker->isRebel() && !attacker->isImperial())
			return true;

		if(defender->getFaction() == 0 || defender->getFaction() == attacker->getFaction())
			return false;
		else if (defender->isPlayerCreature() && defender->getFactionStatus() == FactionStatus::ONLEAVE)
			return false;

		return true;
	}

	PlayerObject* defPlayer= defender->getPlayerObject();
	PlayerObject* atkPlayer = attacker->getPlayerObject();

	if (defPlayer == nullptr || atkPlayer == nullptr)
		return false;

	if (defender->hasPersonalEnemyFlag(attacker) && attacker->hasPersonalEnemyFlag(defender))
		return true;

	if (CombatManager::instance()->areInDuel(attacker, defender))
		return true;

	if (areSameGroup(*attacker, *defender)) {
		return false;
	}

	// Handles BH vs Jedi regardless of group or not
	if (attacker->hasBountyMissionFor(defender) || (defPlayer->hasBhTef() && defender->hasBountyMissionFor(attacker))) {
		return true;
	}

	if (areOpposingFactions(*defender, *attacker) && isPvpAttackable(*defender)) {
		return true;
	}

	if (isGroupTefEnabled && defPlayer->hasBhTef() && validGroupTef(*defender, *attacker)) {
		return true;
	}

	ManagedReference<GuildObject*> guildObject = defender->getGuildObject().get();
	if (guildObject != nullptr && guildObject->isInWaringGuild(attacker))
		return true;

	return false;
}

auto CustomTefManager::isAttackableByInstallation(InstallationObject* defender,
												  CreatureObject* attacker) -> bool {
	if (!(defender->getPvpStatusBitmask() & CreatureFlag::ATTACKABLE)) {
		return false;
	}

	const bool sameFaction = areSameFaction(*defender, *attacker);
	// Check same non-neutral faction
	if (!defender->isNeutral() && !attacker->isNeutral() && sameFaction) {
		return false;
	}

	if (attacker->isPet()) {
		ManagedReference<CreatureObject*> owner = attacker->getLinkedCreature().get();

		if (owner == nullptr)
			return false;

		return defender->isAttackableBy(owner);
	}

	// Checks if installation is overt and target is pvp attackable
	if (attacker->isPlayerCreature() && !defender->isNeutral()
		&& (defender->getPvpStatusBitmask() & CreatureFlag::OVERT)
		&& !(attacker->isNeutral() || sameFaction)) {
			return true;
	}

	SharedInstallationObjectTemplate* instTemplate = cast<SharedInstallationObjectTemplate*>(defender->getObjectTemplate());

	if (instTemplate != nullptr) {
		String factionString = instTemplate->getFactionString();

		if (!factionString.isEmpty()) {
			if (attacker->isAiAgent() && !FactionManager::instance()->isEnemy(factionString, attacker->asAiAgent()->getFactionString()))
				return false;
			else if (attacker->isPlayerCreature() && defender->getObjectTemplate()->getFullTemplateString().contains("turret_fs_village"))
				return false;
		}
	}

	return true;
}

auto CustomTefManager::isHealableBy(CreatureObject* target, CreatureObject* healer) -> bool {
	if (target == nullptr || healer == nullptr)
		return false;

	if (healer == target)
		return true;

	if (target->isInvisible())
		return false;

	if (target->isAttackableBy(healer))
		return false;

	if (areSameGroup(*target, *healer)) {
		return true;
	}

	PlayerObject* healPlayer = healer->getPlayerObject();

	if (healPlayer == nullptr)
		return false;

	if (target->isPet()) {
		auto linkedCreature = target->getLinkedCreature().get();

		if (linkedCreature != nullptr) {
			target = linkedCreature.get();
		}

		if (healer == target) {
			return true;
		}
	}

	// Only let players with the same group TEF id heal each other.
	PlayerObject* tarPlayer = target->getPlayerObject();
	if (tarPlayer != nullptr) {
		if ((healer->isNeutral() || areOpposingFactions(*healer, *target)) && tarPlayer->hasPvpTefOnly()) {
			return false;
		}

		if (tarPlayer->hasBhTef() && !tarPlayer->hasPvpTefOnly())  {
			if (!isGroupTefEnabled) {
				return false;
			}

			if (!areSameGroupTef(*healer, *target)) {
				return false;
			}
		}
	}

	return true;
}

auto CustomTefManager::notifyGcwTef(CreatureObject* tefPlayer) const -> void {
	// Don't need to notify overt
	if (tefPlayer->getFactionStatus() == FactionStatus::OVERT) {
		return;
	}

	tefPlayer->sendSystemMessage(tefMessage);
}
