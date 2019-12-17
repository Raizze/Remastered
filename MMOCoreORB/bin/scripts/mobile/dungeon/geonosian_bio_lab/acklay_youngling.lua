acklay_youngling = Creature:new {
	objectName = "@mob/creature_names:geonosian_acklay_bunker_boss",
	customName = "Acklay Youngling",
	socialGroup = "geonosian_creature",
	faction = "",
	level = 100,
	chanceHit = 5,
	damageMin = 450,
	damageMax = 1100,
	baseXp = 12884,
	baseHAM = 75000,
	baseHAMmax = 95000,
	armor = 2,
	resists = {35,40,50,50,40,40,35,35,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 5,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 0.3,

	templates = {"object/mobile/acklay_hue.iff"},
	lootGroups = {
		{
			groups = {
				{group = "rem_named_crystals", chance = 10000000}
			},
			lootChance = 75000
		},
		{
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}
			},
			lootChance = 35000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareacombo",""},
		{"posturedownattack","postureDownChance=50"}
	}
}

CreatureTemplates:addCreatureTemplate(acklay_youngling, "acklay_youngling")
