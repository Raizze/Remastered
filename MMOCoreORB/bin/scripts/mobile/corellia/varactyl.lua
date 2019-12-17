varactyl = Creature:new {
	objectName = "@mob/creature_names:ep3_kachirho_varactyl",
	socialGroup = "varactyl",
	faction = "",
	level = 30,
	chanceHit = 0.39,
	damageMin = 290,
	damageMax = 300,
	baseXp = 3005,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {-1,125,5,145,145,-1,-1,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 300,
	hideType = "hide_scaley",
	hideAmount = 300,
	boneType = "bone_avian",
	boneAmount = 280,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/varactyl_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/varactyl.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"mildpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl, "varactyl")
