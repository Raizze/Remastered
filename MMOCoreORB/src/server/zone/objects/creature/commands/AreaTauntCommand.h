/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef AREATAUNTCOMMAND_H_
#define AREATAUNTCOMMAND_H_

#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/objects/tangible/threat/ThreatStates.h"

class AreaTauntCommand : public CombatQueueCommand {
public:

	AreaTauntCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {

	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {
		int tauntStrength = creature->getSkillMod("taunt") * 3000;
		
		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		ManagedReference<SceneObject*> targetObject = creature->getZoneServer()->getObject(target);

		if (targetObject == nullptr || !targetObject->isCreatureObject() || targetObject->isPlayerCreature())
			return INVALIDTARGET;

		CreatureObject* targetCreature = cast<CreatureObject*>(targetObject.get());

		if (targetCreature == nullptr)
			return INVALIDTARGET;

		if (!targetCreature->isAttackableBy(creature))
			return INVALIDTARGET;
			
		if (!creature->checkCooldownRecovery("areaTaunt")){
           creature->sendSystemMessage("Taunt is not yet ready to use again..");
           return GENERALERROR;
		}
		creature->updateCooldownTimer("areaTaunt", 10001); // 10 seconds			

		CreatureObject* targetNext = cast<CreatureObject*>(targetObject.get());
		Locker clocker(targetNext, creature);
		ThreatMap* threatMap = targetNext->getThreatMap();
				threatMap->addAggro(creature, tauntStrength , 10000);
				threatMap->setThreatState(targetNext, ThreatStates::TAUNTED, tauntStrength, tauntStrength);


			SortedVector<QuadTreeEntry*> closeObjects;
			CloseObjectsVector* vec = (CloseObjectsVector*) targetCreature->getCloseObjects();
			vec->safeCopyTo(closeObjects);
			if (creature->isPlayerCreature())
				creature->sendSystemMessage("@cbt_spam:taunt_success_single");
			
		int i=0;
		if(closeObjects.size() != 0) {
			creature->doAnimation("taunt");
			int res = doCombatAction(creature, target);
			for (i=0;i<closeObjects.size();i++ ){
			SceneObject* object = static_cast<SceneObject*>( closeObjects.get(i));
				
				if (!object->isCreatureObject())
					continue;

				if (object == creature || object == targetCreature)
					continue;

				if (creature->getWorldPosition().distanceTo(object->getWorldPosition()) - object->getTemplateRadius() > 30)
					continue;
					
			CreatureObject* targetNext = cast<CreatureObject*>( object);		

			if (targetNext == nullptr)
				continue;

			if (!targetNext->isAttackableBy(creature))
				continue;
				
			Locker clocker(targetNext, creature);
				
			ThreatMap* threatMap = targetNext->getThreatMap();
			threatMap->addAggro(creature, tauntStrength , 10000);
			threatMap->setThreatState(targetNext, ThreatStates::TAUNTED, tauntStrength, tauntStrength);
			
			}
		}
		return SUCCESS;
	}
	void sendAttackCombatSpam(TangibleObject* attacker, TangibleObject* defender, int attackResult, int damage, const CreatureAttackData& data) const {
		if (attacker == nullptr)
			return;

		Zone* zone = attacker->getZone();
		if (zone == nullptr)
			return;

		String stringName = data.getCombatSpam();
		byte color = 1;

		switch (attackResult) {
		case CombatManager::HIT:
			stringName += "_success";
			break;
		case CombatManager::MISS:
		case CombatManager::DODGE:
		case CombatManager::COUNTER:
		case CombatManager::BLOCK:
		case CombatManager::RICOCHET:
			stringName += "_fail";
			color = 0;
			break;
		default:
			break;
		}

		CombatManager::instance()->broadcastCombatSpam(attacker, nullptr, nullptr, damage, "cbt_spam", stringName, color);

	}

};

#endif //AREATAUNTCOMMAND_H_
