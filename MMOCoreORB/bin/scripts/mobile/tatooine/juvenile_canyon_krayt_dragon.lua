juvenile_canyon_krayt_dragon = Creature:new {
	objectName = "@mob/creature_names:juvenile_canyon_krayt",
	socialGroup = "krayt",
	faction = "",
	level = 122,
	chanceHit = 4.0,
	damageMin = 745,
	damageMax = 1200,
	baseXp = 11577,
	baseHAM = 54000,
	baseHAMmax = 64000,
	armor = 2,
	resists = {170,170,15,15,110,15,15,15,-1},
	meatType = "meat_carnivore",
	meatAmount = 750,
	hideType = "hide_bristley",
	hideAmount = 500,
	boneType = "bone_mammal",
	boneAmount = 410,
	milk = 0,
	tamingChance = 0,
	ferocity = 20,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/juvenile_canyon_krayt.iff"},
	hues = { 24, 25, 26, 27, 28, 29, 30, 31 },
	scale = 0.55;

	lootGroups = {
		{
	        groups = {
				{group = "krayt_tissue_common", chance = 3300000},
				{group = "krayt_dragon_common", chance = 3400000},
				{group = "krayt_pearls", chance = 3300000}
			},
			lootChance = 5000000
		},
		{
	        groups = {
				{group = "composite_armor", chance = 2500000},
				{group = "ubese_armor", chance = 2500000},
				{group = "melee_two_handed", chance = 2500000},
				{group = "rifles", chance = 2500000}			
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "krayt_trophy", chance = 10000000}
			},
			lootChance = 25000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"creatureareaattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(juvenile_canyon_krayt_dragon, "juvenile_canyon_krayt_dragon")
