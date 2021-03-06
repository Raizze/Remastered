mutrancor_be = Creature:new {
	objectName = "@mob/creature_names:bio_engineered_rancor",
	socialGroup = "rancor",
	faction = "",
	level = 40,
	chanceHit = 0.75,
	damageMin = 30,
	damageMax = 40,
	baseXp = 65,
	baseHAM = 200,
	baseHAMmax = 250,
	armor = 2,
	resists = {0,0,0,0,0,0,0,0,0},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/wod_mutant_rancor_boss.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {}
}

CreatureTemplates:addCreatureTemplate(mutrancor_be, "mutrancor_be")
