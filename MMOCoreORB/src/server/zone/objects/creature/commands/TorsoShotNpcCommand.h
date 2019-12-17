/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#ifndef TORSOSHOTNPCCOMMAND_H_
#define TORSOSHOTNPCCOMMAND_H_

#include "CombatQueueCommand.h"

class TorsoShotNpcCommand : public CombatQueueCommand {
public:

	TorsoShotNpcCommand(const String& name, ZoneProcessServer* server)
		: CombatQueueCommand(name, server) {
	}

	int doQueueCommand(CreatureObject* creature, const uint64& target, const UnicodeString& arguments) const {

		if (!checkStateMask(creature))
			return INVALIDSTATE;

		if (!checkInvalidLocomotions(creature))
			return INVALIDLOCOMOTION;

		return doCombatAction(creature, target);
	}

};

#endif //TORSOSHOTCOMMAND_H_
