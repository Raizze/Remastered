varactyl_gutripper = Creature:new {
	objectName = "@mob/creature_names:ep3_kachirho_varactyl_gutripper",
	socialGroup = "varactyl",
	faction = "",
	level = 34,
	chanceHit = 0.41,
	damageMin = 320,
	damageMax = 350,
	baseXp = 3370,
	baseHAM = 8800,
	baseHAMmax = 10800,
	armor = 0,
	resists = {135,20,20,20,140,-1,-1,-1,-1},
	meatType = "meat_reptilian",
	meatAmount = 310,
	hideType = "hide_scaley",
	hideAmount = 310,
	boneType = "bone_avian",
	boneAmount = 290,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 4,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/varactyl_hue.iff"},
	controlDeviceTemplate = "object/intangible/pet/varactyl.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"mediumpoison",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(varactyl_gutripper, "varactyl_gutripper")
