gualaar = Creature:new {
	objectName = "@mob/creature_names:tcg_gualaar",
	socialGroup = "gualaar",
	faction = "",
	level = 23,
	chanceHit = 0.35,
	damageMin = 210,
	damageMax = 220,
	baseXp = 2219,
	baseHAM = 4100,
	baseHAMmax = 5000,
	armor = 0,
	resists = {125,125,10,10,10,10,10,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 200,
	hideType = "hide_bristley",
	hideAmount = 150,
	boneType = "bone_mammal",
	boneAmount = 90,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/gualaar_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/gualaar_pcd.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack",""},
		{"",""}
	}
}

CreatureTemplates:addCreatureTemplate(gualaar, "gualaar")
