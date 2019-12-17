/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef ANIMALATTACKCOMMAND_H_
#define ANIMALATTACKCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/creature/commands/JediQueueCommand.h"

class AnimalAttackCommand : public JediQueueCommand {
public:

	AnimalAttackCommand(const String& name, ZoneProcessServer* server)
		: JediQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		if (creature->isInvisible()) {
			return GENERALERROR;

		}

		CreatureObject* player = cast<CreatureObject*>(creature);

		if (!creature->hasSkill("force_discipline_powers_master"))
			return GENERALERROR;

		ZoneServer* zserv = creature->getZoneServer();
		PlayerObject* jedi = creature->getPlayerObject();

		// Fail if target is not a player...
		ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(target);

		if (object == nullptr || !object->isCreatureObject())
			return INVALIDTARGET;

		CreatureObject* creatureTarget = cast<CreatureObject*>( object.get());
		PlayerManager* playerManager = server->getPlayerManager();

		if (creature != creatureTarget && !CollisionManager::checkLineOfSight(creature, creatureTarget)) {
			creature->sendSystemMessage("You do not have a clear line of sight to the target.");
			return INVALIDTARGET;
		}

		if (creatureTarget->isRidingMount()) { 
			creature->sendSystemMessage("Your target is mounted, your attack has no effect.");
			return INVALIDTARGET;
		}

		if (!creature->checkCooldownRecovery("animal")) {
			StringIdChatParameter stringId;

			const Time* cdTime = creature->getCooldownTime("animal");

			// Returns -time. Multiple by -1 to return positive.
			int timeLeft = floor((float)cdTime->miliDifference() / 1000) *-1;

			stringId.setStringId("@innate:equil_wait"); // You are still recovering from your last equilization. Command available in %DI seconds.
			stringId.setDI(timeLeft);
			creature->sendSystemMessage(stringId);
			return GENERALERROR;
		}

		if (creatureTarget == nullptr)
			return INVALIDTARGET;

		Locker clocker(creatureTarget, creature);

		ManagedReference<PlayerObject*> targetGhost = creatureTarget->getPlayerObject();
		ManagedReference<PlayerObject*> playerObject = creature->getPlayerObject();

		if (targetGhost == nullptr || playerObject == nullptr)
			return GENERALERROR;

		if (creature->getDistanceTo(creatureTarget) > 42.f){
			creature->sendSystemMessage("You are out of range.");
			return GENERALERROR;}

		if (object->isCreatureObject() && creatureTarget->isAttackableBy(creature)) {
			creature->addDefender(creatureTarget);
			creatureTarget->setDizziedState(6);
			creatureTarget->playEffect("clienteffect/droid_effect_dry_ice.cef", "");
			creatureTarget->sendSystemMessage("An animal shaped force wave hits your legs and knocks you down");
			creatureTarget->setPosture(CreaturePosture::KNOCKEDDOWN);
		creature->addCooldown("animal", 60 * 1000);

		}

		return SUCCESS;
	}

};

#endif //ANIMALATTACKCOMMAND_H_
