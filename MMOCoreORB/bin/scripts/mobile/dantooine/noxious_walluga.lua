noxious_walluga = Creature:new {
	objectName = "@mob/creature_names:ep3_hracca_noxious_walluga",
	socialGroup = "walluga",
	faction = "",
	level = 34,
	chanceHit = 0.41,
	damageMin = 345,
	damageMax = 400,
	baseXp = 3370,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {30,30,30,-1,30,30,30,-1,-1},
	meatType = "meat_insect",
	meatAmount = 660,
	hideType = "hide_scaley",
	hideAmount = 640,
	boneType = "bone_mammal",
	boneAmount = 560,
	milk = 0,
	tamingChance = 0,
	ferocity = 7,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/walluga.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"mediumdisease",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(noxious_walluga, "noxious_walluga")
