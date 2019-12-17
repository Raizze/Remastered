walluga = Creature:new {
	objectName = "@mob/creature_names:ep3_etyyy_walluga",
	socialGroup = "walluga",
	faction = "",
	level = 30,
	chanceHit = 0.39,
	damageMin = 290,
	damageMax = 300,
	baseXp = 3005,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {25,25,25,-1,25,25,-1,-1,-1},
	meatType = "meat_insect",
	meatAmount = 650,
	hideType = "hide_scaley",
	hideAmount = 630,
	boneType = "bone_mammal",
	boneAmount = 550,
	milk = 0,
	tamingChance = 0,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/walluga.iff"},
	controlDeviceTemplate = "object/intangible/beast/bm_walluga.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(walluga, "walluga")
