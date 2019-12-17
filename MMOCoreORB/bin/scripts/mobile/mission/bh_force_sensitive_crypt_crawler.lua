bh_force_sensitive_crypt_crawler = Creature:new {
	objectName = "@mob/creature_names:force_sensitive_crypt_crawler",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "kun",
	faction = "",
	level = 95,
	chanceHit = 0.9,
	damageMin = 685,
	damageMax = 1080,
	baseXp = 9057,
	baseHAM = 16000,
	baseHAMmax = 19000,
	armor = 2,
	resists = {75,75,40,40,40,40,40,40,40},
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

	templates = {"object/mobile/dressed_force_sensitive_crypt_crawler.iff"},
	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 600000},
				{group = "power_crystals", chance = 600000},
				{group = "holocron_dark", chance = 600000},
				{group = "holocron_light", chance = 600000},
				{group = "bounty_hunter_schemes", chance = 1700000},
				{group = "armor_attachments", chance = 2950000},
				{group = "clothing_attachments", chance = 2950000}			},
			lootChance = 4500000
		},
		{
			groups = {
				{group = "color_crystals", chance = 2500000},
				{group = "power_crystals", chance = 2500000},
				{group = "nightsister_rare", chance = 2000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000}			},
			lootChance = 6000000
		},
		{
			groups = {
				{group = "color_crystals", chance = 2500000},
				{group = "power_crystals", chance = 2500000},
				{group = "melee_weapons", chance = 2000000},
				{group = "armor_attachments", chance = 1500000},
				{group = "clothing_attachments", chance = 1500000}
			},
			lootChance = 6000000
		},
	},
	weapons = {"mixed_force_weapons"},
	conversationTemplate = "",
	attacks = merge(pikemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(bh_force_sensitive_crypt_crawler, "bh_force_sensitive_crypt_crawler")
