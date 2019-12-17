object_weapon_melee_special_ep3_wookiee_knuckler = object_weapon_melee_special_ep3_shared_wookiee_knuckler:new {

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
	attackType = MELEEATTACK,
	weaponType = UNARMEDWEAPON,
	
	-- ENERGY, KINETIC, ELECTRICITY, STUN, BLAST, HEAT, COLD, ACID, LIGHTSABER
	damageType = COLD,
	
	-- NONE, LIGHT, MEDIUM, HEAVY
	armorPiercing = NONE,
	
	-- combat_rangedspecialize_bactarifle, combat_rangedspecialize_rifle, combat_rangedspecialize_pistol, combat_rangedspecialize_heavy, combat_rangedspecialize_carbine
	-- combat_meleespecialize_unarmed, combat_meleespecialize_twohand, combat_meleespecialize_polearm, combat_meleespecialize_onehand, combat_general,
	-- combat_meleespecialize_twohandlightsaber, combat_meleespecialize_polearmlightsaber, combat_meleespecialize_onehandlightsaber
	xpType = "combat_meleespecialize_unarmed",
	       
	-- See http://www.ocdsoft.com/files/certifications.xls
	certificationsRequired = { "cert_vibroknuckler" },
	-- See http://www.ocdsoft.com/files/accuracy.xls
	creatureAccuracyModifiers = { "unarmed_accuracy" },
	
	-- See http://www.ocdsoft.com/files/defense.xls
	defenderDefenseModifiers = { "melee_defense" },
	
	-- Leave as "dodge" for now, may have additions later
	defenderSecondaryDefenseModifiers = { "unarmed_passive_defense" },

	defenderToughnessModifiers = { "unarmed_toughness" },
	
	-- See http://www.ocdsoft.com/files/speed.xls
	speedModifiers = { "unarmed_speed" },
	
	-- Leave blank for now
	damageModifiers = { "unarmed_damage" },
	       
	
	-- The values below are the default values.  To be used for blue frog objects primarily
	healthAttackCost = 35,
	actionAttackCost = 50,
	mindAttackCost = 40,
	forceCost = 0,
	
	pointBlankAccuracy = 0,
	pointBlankRange = 7,
	
	idealRange = 46,
	idealAccuracy = 1,
	
	maxRange = 7,
	maxRangeAccuracy = 3,

	minDamage = 89,
	maxDamage = 224,
	
	attackSpeed = 3.0,

	woundsRatio = 8,

	numberExperimentalProperties = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalProperties = {"XX", "XX", "SR", "SR", "SR", "SR", "SR", "SR", "SR", "XX", "SR", "XX", "SR", "SR", "SR"},
	experimentalWeights = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	experimentalGroupTitles = {"null", "null", "expDamage", "expDamage", "expDamage", "expDamage", "exp_durability", "expRange", "expRange", "null", "expRange", "null", "expEffeciency", "expEffeciency", "expEffeciency"},
	experimentalSubGroupTitles = {"null", "null", "mindamage", "maxdamage", "attackspeed", "woundchance", "hitpoints", "zerorangemod", "maxrangemod", "midrange", "midrangemod", "maxrange", "attackhealthcost", "attackactioncost", "attackmindcost"},
	experimentalMin = {0, 0, 9, 50, 3.6, 14, 750, 5, 5, 1, 5, 5, 36, 54, 36},
	experimentalMax = {0, 0, 17, 114, 2.5, 26, 1500, 15, 15, 1, 15, 5, 18, 30, 18},
	experimentalPrecision = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
}

ObjectTemplates:addTemplate(object_weapon_melee_special_ep3_wookiee_knuckler, "object/weapon/melee/special/ep3/wookiee_knuckler.iff")
