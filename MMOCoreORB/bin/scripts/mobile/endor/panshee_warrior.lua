panshee_warrior = Creature:new {
	objectName = "@mob/creature_names:panshee_warrior",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "panshee_tribe",
	faction = "panshee_tribe",
	level = 27,
	chanceHit = 0.36,
	damageMin = 250,
	damageMax = 260,
	baseXp = 2730,
	baseHAM = 7700,
	baseHAMmax = 9400,
	armor = 1,
	resists = {30,30,30,30,30,30,30,30,-1},
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
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {
		"object/mobile/dressed_ewok_m_06.iff",
		"object/mobile/dressed_ewok_m_08.iff"},
	lootGroups = {
		{
			groups = {
				{group = "ewok", chance = 4400000},
				{group = "wookiee_loot_common", chance = 3500000},
				{group = "panshee_loot", chance = 2100000}
			},
			lootChance = 1540000
		},
		{	
			groups = {
				{group = "ewok_trophy", chance = 10000000}
			},
			lootChance = 25000
		},
	},
	weapons = {"ewok_weapons"},
	conversationTemplate = "",
	attacks = merge(riflemanmaster,brawlermaster)
}

CreatureTemplates:addCreatureTemplate(panshee_warrior, "panshee_warrior")
