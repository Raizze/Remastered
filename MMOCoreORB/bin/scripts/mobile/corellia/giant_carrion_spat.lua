giant_carrion_spat = Creature:new {
	objectName = "@mob/creature_names:giant_carrion_spat",
	socialGroup = "carrion_spat",
	faction = "",
	level = 18,
	chanceHit = 0.32,
	damageMin = 160,
	damageMax = 170,
	baseXp = 1426,
	baseHAM = 3500,
	baseHAMmax = 4300,
	armor = 0,
	resists = {-1,125,5,145,145,-1,-1,-1,-1},
	meatType = "meat_avian",
	meatAmount = 350,
	hideType = "hide_leathery",
	hideAmount = 295,
	boneType = "bone_avian",
	boneAmount = 295,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 2.0,

	templates = {"object/mobile/giant_carrion_spat.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 40, 41, 42, 43 },
	controlDeviceTemplate = "object/intangible/pet/carrion_spat_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(giant_carrion_spat, "giant_carrion_spat")
