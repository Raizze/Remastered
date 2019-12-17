#include "server/zone/custom/managers/CustomPvpManager.h"

#include <memory>
#include <unordered_map>

#include "engine/lua/Lua.h"
#include "engine/lua/LuaObject.h"
#include "server/chat/ChatManager.h"
#include "server/ServerCore.h"
#include "server/zone/managers/combat/CombatManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/objects/group/GroupObject.h"
#include "server/zone/objects/player/FactionStatus.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/packets/chat/ChatRoomMessage.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/zone/ZoneServer.h"

static auto hasTitle(CreatureObject& player, const Vector<String>& titles) -> bool {
	bool isValid = false;
	for (const auto& title : titles) {
		if (player.hasSkill(title)) {
			isValid = true;
			break;
		}
	}

	return isValid;
}

static auto getRandomTrophy(const Vector<String>& trophies) -> String {
	const uint32 randomIdx = System::random(trophies.size() - 1);
	return trophies.get(randomIdx);
}

static auto generateObjectName(CreatureObject& player, const String& nameFormat) -> String {
	const String lastName = player.getLastName();
	String fullName = player.getFirstName();
	if (!lastName.isEmpty()) {
		fullName += " " + lastName;
	}
	return String::format(nameFormat.toCharArray(), fullName.toCharArray());
}

static auto grantTrophy(const String& trophyNameFormat,
						const Vector<String>& trophies,
						CreatureObject& killer,
						CreatureObject& victim) -> bool {
	// Create trophy
	const String trophyItem = getRandomTrophy(trophies);
	TangibleObject* trophy = (killer.getZoneServer()->createObject(trophyItem.hashCode(), 2)).castTo<TangibleObject*>();

	if (trophy == nullptr) {
		return false;
	}

	Locker locker(trophy);
	ManagedReference<SceneObject*> inventory = killer.getSlottedObject("inventory");
	if (inventory != nullptr && inventory->transferObject(trophy, -1, true)) {
		const String trophyName = generateObjectName(victim, trophyNameFormat);
		trophy->setCustomObjectName(trophyName, false);
		trophy->sendTo(&killer, trophy);
	} else {
		trophy->destroyObjectFromDatabase(trophy);

		return false;
	}

	return true;
}

CustomPvpManager::CustomPvpManager() {
	setLoggingName("CustomPvpManager");
	setGlobalLogging(true);
	setLogging(true);
}

auto CustomPvpManager::initialize() -> void {
	info("Loading CustomPvpManager config file");

	std::unique_ptr<Lua> lua{new Lua()};
	lua->init();

	lua->runFile("scripts/custom_scripts/managers/custom_pvp_manager.lua");

	// Load configs
	frsChatHeader = lua->getGlobalString("frsChatHeader");
	gcwChatHeader = lua->getGlobalString("gcwChatHeader");

	const String neutralTag = lua->getGlobalString("neutralTag");
	factionTag.put(Factions::FACTIONNEUTRAL, neutralTag);

	const String rebelTag = lua->getGlobalString("rebelTag");
	factionTag.put(Factions::FACTIONREBEL, rebelTag);

	const String imperialTag = lua->getGlobalString("imperialTag");
	factionTag.put(Factions::FACTIONIMPERIAL, imperialTag);

	playerKillMessage = lua->getGlobalString("playerKillMessage");
	gcwKillMessage = lua->getGlobalString("gcwKillMessage");
	duelKillMessage = lua->getGlobalString("duelKillMessage");
	bountyKillMessage = lua->getGlobalString("bountyKillMessage");
	jediKillMessage = lua->getGlobalString("jediKillMessage");

	LuaObject frsMemberTitlesObject = lua->getGlobalObject("frsMemberTitles");
	if (frsMemberTitlesObject.isValidTable()) {
		for (int idx = 1; idx <= frsMemberTitlesObject.getTableSize(); ++idx) {
			const String title = frsMemberTitlesObject.getStringAt(idx);
			frsMemberTitles.add(title);
		}
	}
	frsMemberTitlesObject.pop();

	LuaObject frsTargetTitlesObject = lua->getGlobalObject("frsTargetTitles");
	if (frsTargetTitlesObject.isValidTable()) {
		for (int idx = 1; idx <= frsTargetTitlesObject.getTableSize(); ++idx) {
			const String title = frsTargetTitlesObject.getStringAt(idx);
			frsTargetTitles.add(title);
		}
	}
	frsTargetTitlesObject.pop();

	jediTrophyName = lua->getGlobalString("jediTrophyName");
	LuaObject jediTrophiesObject = lua->getGlobalObject("jediTrophies");
	if (jediTrophiesObject.isValidTable()) {
		for (int idx = 1; idx <= jediTrophiesObject.getTableSize(); ++idx) {
			const String trophy = jediTrophiesObject.getStringAt(idx);
			jediTrophies.add(trophy);
		}
	}
	jediTrophiesObject.pop();

	bountyTrophyName = lua->getGlobalString("bountyTrophyName");
	LuaObject bountyTrophiesObject = lua->getGlobalObject("bountyTrophies");
	if (bountyTrophiesObject.isValidTable()) {
		for (int idx = 1; idx <= bountyTrophiesObject.getTableSize(); ++idx) {
			const String trophy = bountyTrophiesObject.getStringAt(idx);
			bountyTrophies.add(trophy);
		}
	}
	bountyTrophiesObject.pop();

	playerKillMusic = lua->getGlobalString("playerKillMusic");

	pvpXp = lua->getGlobalInt("pvpXp");
	pvpGroupXp = lua->getGlobalInt("pvpGroupXp");
	pvpXpMessage = lua->getGlobalString("pvpXpMessage");

	frsGroupPenalty = lua->getGlobalFloat("frsGroupPenalty");
	if (frsGroupPenalty > 1.0f) {
		error("frsGroupPenalty greater than 1, setting to 1");
		frsGroupPenalty = 1.0f;
	} else if (frsGroupPenalty < 0.0f) {
		error("frsGroupPenalty less than 0, setting to 0");
		frsGroupPenalty = 0.0f;
	}
	frsXpMessage = lua->getGlobalString("frsXpMessage");
}

auto CustomPvpManager::isValidFrsMember(CreatureObject& player) const -> bool {
	return hasTitle(player, frsMemberTitles);
}

auto CustomPvpManager::isValidFrsTarget(CreatureObject& player) const -> bool {
	return hasTitle(player, frsTargetTitles);
}

auto CustomPvpManager::broadcastPvpKill(ChatRoom& chatRoom,
										CreatureObject& killer,
										CreatureObject& victim) const -> void {
	const bool isFrsKill = isValidFrsMember(killer) && isValidFrsTarget(victim);
	const String msgHeader = isFrsKill ? frsChatHeader : gcwChatHeader;
	const String galaxyName = ServerCore::getInstance()->getZoneServer()->getGalaxyName();
	const String victimName = victim.getFirstName();
	const String killerName = killer.getFirstName();
	const UnicodeString message{String::format(playerKillMessage.toCharArray(), victimName.toCharArray(), killerName.toCharArray())};

	BaseMessage* msg = new ChatRoomMessage(msgHeader, galaxyName, message, chatRoom.getRoomID());
	chatRoom.broadcastMessage(msg);
}

auto CustomPvpManager::broadcastPvpGlobal(CreatureObject& killer,
										  CreatureObject& victim) const -> void {
	const bool isDueling = CombatManager::instance()->areInDuel(&killer, &victim);
	const String& msgFormat = isDueling ? duelKillMessage : gcwKillMessage;

	const String& killerFactionTag = factionTag.get(killer.getFaction());
	const String& victimFactionTag = factionTag.get(victim.getFaction());
	const String msg = String::format(msgFormat.toCharArray(),
									  victimFactionTag.toCharArray(),
									  victim.getFirstName().toCharArray(),
									  killerFactionTag.toCharArray(),
									  killer.getFirstName().toCharArray());
	ServerCore::getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, msg);
}

auto CustomPvpManager::broadcastBhKill(CreatureObject& jedi,
									   CreatureObject& bounty) const -> void {
	const String msg = String::format(bountyKillMessage.toCharArray(),
									  jedi.getFirstName().toCharArray(),
									  bounty.getFirstName().toCharArray());
	ServerCore::getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, msg);
}

auto CustomPvpManager::broadcastJediKill(CreatureObject& bounty,
										 CreatureObject& jedi) const -> void {
	const String msg = String::format(jediKillMessage.toCharArray(),
									  bounty.getFirstName().toCharArray(),
									  jedi.getFirstName().toCharArray());
	ServerCore::getZoneServer()->getChatManager()->broadcastGalaxy(nullptr, msg);
}

auto CustomPvpManager::getFrsGroupPenalty() const -> float {
	return frsGroupPenalty;
}

auto CustomPvpManager::grantPvpXp(CreatureObject& killer, const int groupSize) const -> void {
	const int xp = groupSize > 1 ? pvpGroupXp : pvpXp;

	PlayerManager* playerManager = ServerCore::getInstance()->getZoneServer()->getPlayerManager();
	playerManager->awardExperience(&killer, "gcw_pvp_xp", xp, false);

	const String msg = String::format(pvpXpMessage.toCharArray(), xp);
	killer.sendSystemMessage(msg);
}

auto CustomPvpManager::grantJediTrophy(CreatureObject& bountyHunter,
									   CreatureObject& jedi) const -> bool {
	return grantTrophy(jediTrophyName, jediTrophies, bountyHunter, jedi);
}

auto CustomPvpManager::grantBountyTrophy(CreatureObject& hunted,
										 CreatureObject& bountyHunter) const -> bool {
	return grantTrophy(bountyTrophyName, bountyTrophies, hunted, bountyHunter);
}

auto CustomPvpManager::playerKillFlair(CreatureObject& player) const -> void {
	PlayMusicMessage* pmm = new PlayMusicMessage(playerKillMusic);
	player.sendMessage(pmm);
}

auto CustomPvpManager::frsGainedMessage(CreatureObject& player, const int amount) const -> void {
	const String msg = String::format(frsXpMessage.toCharArray(), amount);
	player.sendSystemMessage(msg);
}