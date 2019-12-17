varactyl_deathspine = Creature:new {
	objectName = "@mob/creature_names:ep3_kachirho_varactyl_deathspine",
	socialGroup = "varactyl",
	faction = "",
	level = 48,
	chanceHit = 0.48,
	damageMin = 375,
	damageMax = 460,
	baseXp = 4734,
	baseHAM = 9800,
	baseHAMmax = 12000,
	armor = 1,
	resists = {140,160,0,-1,-1,0,0,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 330,
	hideType = "hide_scaley",
	hideAmount = 330,
	boneType = "bone_avian",
	boneAmount = 310,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 6,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1.3,

	templates = {"object/mobile/varactyl_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/varactyl.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"dizzyattack",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl_deathspine, "varactyl_deathspine")
