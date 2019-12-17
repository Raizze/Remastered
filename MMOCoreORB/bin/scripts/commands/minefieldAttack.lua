--minefieldAttack.lua
--Created on: Dec 21, 2012
--  Author: root

MinefieldAttackCommand = {
    name = "minefieldattack",
	combatSpam = "attack",
	poolsToDamage = RANDOM_ATTRIBUTE,
	areaAction = true,
	range = -1,
	coneAction = false,
	accuracyBonus = 150,
	areaRange = -1, -- default to the weapon range
	
}

AddCommand(MinefieldAttackCommand)
