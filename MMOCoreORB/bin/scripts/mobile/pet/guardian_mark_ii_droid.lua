guardian_mark_ii_droid = Creature:new {
	objectName = "@droid_name:guardian_mark_ii_crafted",
	socialGroup = "",
	faction = "",
	level = 4,
	chanceHit = 0.64,
	damageMin = 450,
	damageMax = 650,
	baseXp = 0,
	baseHAM = 8500,
	baseHAMmax = 10000,
	armor = 2,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/creature/npc/droid/crafted/guardian_mark_ii_crafted.iff"
	},
	lootGroups = {},
	defaultAttack = "attack",
	weapons = {"droid_probot_ranged"},
	conversationTemplate = "",
}

CreatureTemplates:addCreatureTemplate(guardian_mark_ii_droid, "guardian_mark_ii_droid")
