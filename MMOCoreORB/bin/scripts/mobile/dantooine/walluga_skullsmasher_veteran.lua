walluga_skullsmasher_veteran = Creature:new {
	objectName = "@mob/creature_names:ep3_rryatt_walluga_smasher_elite",
	socialGroup = "walluga",
	faction = "",
	level = 58,
	chanceHit = 0.53,
	damageMin = 430,
	damageMax = 570,
	baseXp = 5647,
	baseHAM = 10000,
	baseHAMmax = 13000,
	armor = 0,
	resists = {165,140,0,-1,150,5,120,0,-1},
	meatType = "meat_insect",
	meatAmount = 800,
	hideType = "hide_scaley",
	hideAmount = 780,
	boneType = "bone_mammal",
	boneAmount = 700,
	milk = 0,
	tamingChance = 0,
	ferocity = 4,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1.5,

	templates = {"object/mobile/walluga.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"strongpoison",""},
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(walluga_skullsmasher_veteran, "walluga_skullsmasher_veteran")
