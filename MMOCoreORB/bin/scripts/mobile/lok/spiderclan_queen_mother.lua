spiderclan_queen_mother = Creature:new {
	objectName = "@mob/creature_names:spiderclan_queen_mother_n",
	socialGroup = "spiderclan",
	faction = "",
	level = 27,
	chanceHit = 0.37,
	damageMin = 250,
	damageMax = 260,
	baseXp = 2730,
	baseHAM = 8200,
	baseHAMmax = 10000,
	armor = 0,
	resists = {135,135,150,60,60,-1,-1,-1,-1},
	meatType = "meat_insect",
	meatAmount = 80,
	hideType = "hide_scaley",
	hideAmount = 80,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 1,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/spiderclan_queen_mother.iff"},
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"mediumpoison",""}
	}
}

CreatureTemplates:addCreatureTemplate(spiderclan_queen_mother, "spiderclan_queen_mother")
