frenzied_walluga = Creature:new {
	objectName = "@mob/creature_names:ep3_etyyy_walluga_frenzied",
	socialGroup = "walluga",
	faction = "",
	level = 32,
	chanceHit = 0.39,
	damageMin = 310,
	damageMax = 330,
	baseXp = 3188,
	baseHAM = 8100,
	baseHAMmax = 9900,
	armor = 0,
	resists = {130,150,15,160,-1,20,15,-1,-1},
	meatType = "meat_insect",
	meatAmount = 660,
	hideType = "hide_scaley",
	hideAmount = 640,
	boneType = "bone_mammal",
	boneAmount = 560,
	milk = 0,
	tamingChance = 0,
	ferocity = 4,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/walluga.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"knockdownattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(frenzied_walluga, "frenzied_walluga")
