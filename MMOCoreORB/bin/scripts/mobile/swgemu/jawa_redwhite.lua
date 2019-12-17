jawa_redwhite = Creature:new {
	objectName = "@mob/creature_names:jawa",
	randomNameType = NAME_GENERIC,
	randomNameTag = true,
	socialGroup = "gorax",
	faction = "jawa",
	level = 250,
	chanceHit = 90,
	damageMin = 1000,
	damageMax = 1500,
	baseXp = 7500,
	baseHAM = 550000,
	baseHAMmax = 750000,
	armor = 1,
	resists = {95,95,95,95,95,95,95,95,95},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 90,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/swgemu/christmas/mobile/jawa_redwhite.iff"},
lootGroups = {
			{
				groups = {
						{group = "elite_npc_drops", chance = 500000},
						{group = "clothing_attachments", chance = 2000000},
						{group = "melee_polearm", chance = 1000000},
						{group = "lifedayRare", chance = 2000000},
						{group = "lifedayCommon1", chance = 4500000},
					},
				lootChance = 10000000
			},
			{
				groups = {
						{group = "lifedayCommon1", chance = 2500000},
						{group = "lifedayCommon2", chance = 2500000},
						{group = "lifedayCommon3", chance = 2500000},
						{group = "carbines", chance = 1000000},
						{group = "rifles", chance = 1500000},
					},
				lootChance = 10000000
			},
			{
				groups = {
					{group = "lifedayCommon1", chance = 2500000},
					{group = "lifedayCommon2", chance = 2500000},
					{group = "lifedayCommon3", chance = 2500000},
					{group = "carbines", chance = 1000000},
					{group = "rifles", chance = 1500000},
				},
				lootChance = 10000000
			}
	},
	weapons = {"jawa_warlord_weapons"},
	conversationTemplate = "",
	attacks = merge(brawlermid,marksmanmid)
}

CreatureTemplates:addCreatureTemplate(jawa_redwhite, "jawa_redwhite")
