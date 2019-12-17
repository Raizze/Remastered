walluga_skullsmasher = Creature:new {
	objectName = "@mob/creature_names:ep3_kachirho_walluga_stoneskin",
	socialGroup = "walluga",
	faction = "",
	level = 40,
	chanceHit = 0.44,
	damageMin = 345,
	damageMax = 400,
	baseXp = 3915,
	baseHAM = 9300,
	baseHAMmax = 11300,
	armor = 0,
	resists = {25,160,25,-1,25,25,-1,25,-1},
	meatType = "meat_insect",
	meatAmount = 750,
	hideType = "hide_scaley",
	hideAmount = 760,
	boneType = "bone_mammal",
	boneAmount = 650,
	milk = 0,
	tamingChance = 0,
	ferocity = 4,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1.3,

	templates = {"object/mobile/walluga.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"knockdownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(walluga_skullsmasher, "walluga_skullsmasher")
