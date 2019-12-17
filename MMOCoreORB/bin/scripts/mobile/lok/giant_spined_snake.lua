giant_spined_snake = Creature:new {
	objectName = "@mob/creature_names:giant_spined_snake",
	socialGroup = "spine_snake",
	faction = "",
	level = 22,
	chanceHit = 0.34,
	damageMin = 240,
	damageMax = 250,
	baseXp = 2219,
	baseHAM = 4100,
	baseHAMmax = 5000,
	armor = 0,
	resists = {10,10,150,150,150,-1,-1,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 35,
	hideType = "hide_leathery",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/giant_spined_snake.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	scale = 1.5,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"strongpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_spined_snake, "giant_spined_snake")