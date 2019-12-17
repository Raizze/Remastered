varactyl_scarred = Creature:new {
	objectName = "@mob/creature_names:ep3_kachirho_varactyl_scar",
	socialGroup = "varactyl",
	faction = "",
	level = 28,
	chanceHit = 0.36,
	damageMin = 270,
	damageMax = 280,
	baseXp = 2914,
	baseHAM = 8100,
	baseHAMmax = 9900,
	armor = 0,
	resists = {15,15,15,140,20,-1,-1,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 290,
	hideType = "hide_scaley",
	hideAmount = 290,
	boneType = "bone_avian",
	boneAmount = 270,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 0.7,

	templates = {"object/mobile/varactyl_hue.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"blindattack",""},
		{"",""}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl_scarred, "varactyl_scarred")
