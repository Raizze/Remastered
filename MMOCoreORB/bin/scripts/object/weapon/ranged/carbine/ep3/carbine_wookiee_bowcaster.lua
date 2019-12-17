object_weapon_ranged_carbine_ep3_carbine_wookiee_bowcaster = object_weapon_ranged_carbine_ep3_shared_carbine_wookiee_bowcaster:new {
	
	playerRaces = { "object/creature/player/bothan_male.iff",
				"object/creature/player/bothan_female.iff",
				"object/creature/player/human_male.iff",
				"object/creature/player/human_female.iff",
				"object/creature/player/ithorian_male.iff",
				"object/creature/player/ithorian_female.iff",
				"object/creature/player/moncal_male.iff",
				"object/creature/player/moncal_female.iff",
				"object/creature/player/rodian_male.iff",
				"object/creature/player/rodian_female.iff",
				"object/creature/player/sullustan_male.iff",
				"object/creature/player/sullustan_female.iff",
				"object/creature/player/trandoshan_male.iff",
				"object/creature/player/trandoshan_female.iff",
				"object/creature/player/twilek_male.iff",
				"object/creature/player/twilek_female.iff",
				"object/creature/player/wookiee_male.iff",
				"object/creature/player/wookiee_female.iff",
				"object/creature/player/zabrak_male.iff",
				"object/creature/player/zabrak_female.iff" },

	-- RANGEDATTACK, MELEEATTACK, FORCEATTACK, TRAPATTACK, GRENADEATTACK, HEAVYACIDBEAMATTACK,
	-- HEAVYLIGHTNINGBEAMATTACK, HEAVYPARTICLEBEAMATTACK, HEAVYROCKETLAUNCHERATTACK, HEAVYLAUNCHERATTACK
	attackType = RANGEDATTACK,

	-- ENERGY, KINETIC, ELECTRICITY, STUN, BLAST, HEAT, COLD, ACID, LIGHTSABER
	damageType = ENERGY,

	-- NONE, LIGHT, MEDIUM, HEAVY
	armorPiercing = LIGHT,

	xpType = "combat_rangedspecialize_carbine",

	certificationsRequired = { "cert_carbine_dxr6" },
	creatureAccuracyModifiers = { "carbine_accuracy" },

	creatureAimModifiers = { "carbine_aim", "aim" },

	defenderDefenseModifiers = { "ranged_defense" },

	defenderSecondaryDefenseModifiers = { "counterattack" },

	speedModifiers = { "carbine_speed" },

	-- Leave blank for now
	damageModifiers = { },


	-- The values below are the default values.  To be used for blue frog objects primarily
	healthAttackCost = 25,
	actionAttackCost = 40,
	mindAttackCost = 19,
	forceCost = 0,

	pointBlankRange = 0,
	pointBlankAccuracy = -20,

	idealRange = 22,
	idealAccuracy = 0,

	maxRange = 64,
	maxRangeAccuracy = -80,

	minDamage = 90,
	maxDamage = 150,

	attackSpeed = 4.4,

	woundsRatio = 15,

	numberExperimentalProperties = {1, 1, 2, 2, 2, 2, 2, 2, 1, 1, 1, 2, 2, 2, 2},
	experimentalProperties = {"XX", "XX", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR", "XX", "XX", "XX", "OQ", "SR", "OQ", "SR", "OQ", "SR", "OQ", "SR"},
	experimentalWeights = {1, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 1, 1, 1, 2, 1, 2, 1, 2, 1, 2, 1},
	experimentalGroupTitles = {"null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "expEffeciency", "exp_durability", "null", "null", "null", "expRange", "expEffeciency", "expEffeciency", "expEffeciency"},
	experimentalSubGroupTitles = {"null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "roundsused", "hitpoints", "zerorangemod", "maxrangemod", "midrange", "midrangemod", "attackhealthcost", "attackactioncost", "attackmindcost"},
	experimentalMin = {0, 0, 63, 91, 6, 10, 30, 750, -20, -80, 22, -5, 33, 52, 25},
	experimentalMax = {0, 0, 90, 143, 4.1, 20, 65, 1500, -20, -80, 22, 5, 18, 28, 13},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_ranged_carbine_ep3_carbine_wookiee_bowcaster, "object/weapon/ranged/carbine/ep3/carbine_wookiee_bowcaster.iff")
