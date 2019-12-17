/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef DISARMINGSHOT1COMMAND_H_
#define DISARMINGSHOT1COMMAND_H_

#include "CombatQueueCommand.h"

class DisarmingShot1Command : public CombatQueueCommand {
    protected:
	String skillName = "disarmShot";		// Skill Name
	String tarSkillName = "targetDisarm";
	String skillNameDisplay = "Disarm Shot";		// Skill Display Name for output message
	int delay = 36; 								//  30 second cool down timer after root expires
	int tarDelay = 10;
public:

	DisarmingShot1Command(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

		int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;
		ManagedReference<SceneObject*> object = server->getZoneServer()->getObject(target);
		CreatureObject* targetCreature = dynamic_cast<CreatureObject*>(object.get());

		if (targetCreature == nullptr)
			return INVALIDTARGET;

		Locker clocker(targetCreature, creature);

		ManagedReference<PlayerObject*> player = creature->getPlayerObject();
		PlayerObject* targetPlayerObject = targetCreature->getPlayerObject();

		if (targetPlayerObject == nullptr) {
			return INVALIDTARGET;
		} else if (player == nullptr)
			return GENERALERROR;

		if (!creature->checkCooldownRecovery(skillName)){
			const Time* timeRemaining = creature->getCooldownTime(skillName);
			creature->sendSystemMessage("You must wait " +  getCooldownString(timeRemaining->miliDifference() * -1)  + " to use " + skillNameDisplay + " again");
			return GENERALERROR;
		}

		if (!targetCreature->checkCooldownRecovery(tarSkillName)){
			const Time* timeRemaining = targetCreature->getCooldownTime(tarSkillName);
			creature->sendSystemMessage("You cannot use " + skillNameDisplay + " on target for " + getCooldownString(timeRemaining->miliDifference() * -1));
			return GENERALERROR;
		}
		
		int res = doCombatAction(creature, target);

		if (res == SUCCESS) {

			// Setup debuff.
			if (targetCreature != nullptr) {
				Locker clocker(targetCreature, creature);

				ManagedReference<Buff*> buff = new Buff(targetCreature, getNameCRC(), 6, BuffType::OTHER);

				Locker locker(buff);
				if (targetCreature->hasBuff(STRING_HASHCODE("burstrun")) || targetCreature->hasBuff(STRING_HASHCODE("retreat")) || targetCreature->hasBuff(BuffCRC::JEDI_FORCE_RUN_1)) {
					targetCreature->removeBuff(STRING_HASHCODE("burstrun"));
					targetCreature->removeBuff(STRING_HASHCODE("retreat"));
					targetCreature->removeBuff(BuffCRC::JEDI_FORCE_RUN_1);
				}

				buff->setSpeedMultiplierMod(0.01f);
				buff->setAccelerationMultiplierMod(0.01f);
				targetCreature->setSnaredState(6);
				StringBuffer targetRootMessage;

				targetRootMessage << "You have been ROOTED for 3 seconds";
				targetCreature->sendSystemMessage(targetRootMessage.toString());
				PlayMusicMessage* pmm = new PlayMusicMessage("sound/wep_rifle_geo_drill.snd");
				targetCreature->sendMessage(pmm);
				targetCreature->playEffect("clienteffect/frs_dark_vengeance.cef");

				targetCreature->addBuff(buff);
				creature->updateCooldownTimer(skillName, delay * 1000);
				targetCreature->updateCooldownTimer(tarSkillName, tarDelay * 1000);

			}

		}
		return res;
	}

	String getCooldownString(uint32 delta) const {

		int seconds = delta / 1000;

		int hours = seconds / 3600;
		seconds -= hours * 3600;

		int minutes = seconds / 60;
		seconds -= minutes * 60;

		StringBuffer buffer;

		if (hours > 0)
			buffer << hours << "h ";

		if (minutes > 0)
			buffer << minutes << "m ";

		if (seconds > 0)
			buffer << seconds << "s";

		return buffer.toString();
	}

};

#endif //DISARMINGSHOT1COMMAND_H_
