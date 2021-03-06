kliknik_mantis = Creature:new {
	objectName = "@mob/creature_names:kliknik_mantis",
	socialGroup = "kliknik",
	faction = "",
	level = 22,
	chanceHit = 0.35,
	damageMin = 170,
	damageMax = 180,
	baseXp = 2006,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 0,
	resists = {120,5,5,-1,5,-1,5,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 35,
	hideType = "hide_scaley",
	hideAmount = 60,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/kliknik_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	controlDeviceTemplate = "object/intangible/pet/kliknik_hue.iff",
	scale = 1.1,
	lootGroups = {
	 {
	        groups = {
				{group = "kliknik_common", chance = 10000000}
			},
			lootChance = 1440000
		},
		{	
			groups = {
				{group = "kliknik_trophy", chance = 10000000}
			},
			lootChance = 25000
		},
	},
	weapons = {"creature_spit_small_yellow"},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(kliknik_mantis, "kliknik_mantis")
