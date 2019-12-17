bh_force_crystal_hunter = Creature:new {
	objectName = "@mob/creature_names:dark_force_crystal_hunter",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kun",
	faction = "",
	level = 115,
	chanceHit = 1,
	damageMin = 820,
	damageMax = 1350,
	baseXp = 10921,
	baseHAM = 24000,
	baseHAMmax = 30000,
	armor = 2,
	resists = {80,80,80,80,80,80,80,80,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + KILLER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_dark_force_crystal_hunter.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 600000},
				{group = "power_crystals", chance = 600000},
				{group = "holocron_dark", chance = 600000},
				{group = "holocron_light", chance = 600000},
				{group = "melee_weapons", chance = 2400000},
				{group = "armor_attachments", chance = 2600000},
				{group = "clothing_attachments", chance = 2600000}
			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "bounty_hunter_schemes", chance = 1500000},
				{group = "color_crystals", chance = 2500000},
				{group = "power_crystals", chance = 1000000},
				{group = "nightsister_rare", chance = 2000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000}
			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "power_crystals", chance = 2000000},
				{group = "color_crystals", chance = 2500000},
				{group = "melee_weapons", chance = 2500000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000}
			},
			lootChance = 5300000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(bh_force_crystal_hunter, "bh_force_crystal_hunter")
