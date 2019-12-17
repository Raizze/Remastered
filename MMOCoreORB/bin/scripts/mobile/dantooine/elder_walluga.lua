elder_walluga = Creature:new {
	objectName = "@mob/creature_names:ep3_etyyy_walluga_elder",
	socialGroup = "walluga",
	faction = "",
	level = 36,
	chanceHit = 0.4,
	damageMin = 300,
	damageMax = 310,
	baseXp = 3642,
	baseHAM = 8500,
	baseHAMmax = 10300,
	armor = 0,
	resists = {145,140,20,170,-1,165,170,20,-1},
	meatType = "meat_insect",
	meatAmount = 750,
	hideType = "hide_scaley",
	hideAmount = 730,
	boneType = "bone_mammal",
	boneAmount = 650,
	milk = 0,
	tamingChance = 0,
	ferocity = 4,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 1.2,

	templates = {"object/mobile/walluga.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(elder_walluga, "elder_walluga")
