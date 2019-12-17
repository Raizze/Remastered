varactyl_preystalker = Creature:new {
	objectName = "@mob/creature_names:ep3_kachirho_varactyl_preystalker",
	socialGroup = "varactyl",
	faction = "",
	level = 32,
	chanceHit = 0.4,
	damageMin = 290,
	damageMax = 300,
	baseXp = 3188,
	baseHAM = 8800,
	baseHAMmax = 10500,
	armor = 0,
	resists = {140,135,150,20,20,20,150,20,-1},
	meatType = "meat_reptilian",
	meatAmount = 310,
	hideType = "hide_scaley",
	hideAmount = 310,
	boneType = "bone_avian",
	boneAmount = 290,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
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

CreatureTemplates:addCreatureTemplate(varactyl_preystalker, "varactyl_preystalker")
