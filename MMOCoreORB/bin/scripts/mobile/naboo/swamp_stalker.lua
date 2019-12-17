swamp_stalker = Creature:new {
	objectName = "@mob/creature_names:swamp_stalker",
	socialGroup = "tusk_cat",
	faction = "",
	level = 32,
	chanceHit = 0.39,
	damageMin = 290,
	damageMax = 300,
	baseXp = 3279,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {135,20,20,170,20,20,160,20,-1},
	meatType = "meat_carnivore",
	meatAmount = 65,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 35,
	milk = 0,
	tamingChance = 0.2,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/tusk_cat_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 11, 12, 13, 17, 18, 22, 27, 32, 48, 57, 62, 67, 72, 77, 82 },
	controlDeviceTemplate = "object/intangible/pet/tusk_cat_hue.iff",
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(swamp_stalker, "swamp_stalker")
