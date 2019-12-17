gorax_grinch_med = Creature:new {
	objectName = "",
	customName = "Grinch Adolescent",
	socialGroup = "gorax",
	faction = "",
	level = 305,
	chanceHit = 95,
	damageMin = 1550,
	damageMax = 2200,
	baseXp = 75000,
	baseHAM = 1250000,
	baseHAMmax = 1500000,
	armor = 1,
	resists = {125,125,125,125,125,125,125,125,125},
	meatType = "meat_herbivore",
	meatAmount = 100,
	hideType = "hide_bristley",
	hideAmount = 100,
	boneType = "bone_mammal",
	boneAmount = 100,
	milk = 0,
	tamingChance = 0,
	ferocity = 90,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
        scale = .5,

	templates = {"object/swgemu/christmas/mobile/gorax_grinch.iff"},
	lootGroups = {
		{
			groups = {
				{group = "elite_npc_drops", chance = 1500000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "pistols", chance = 1000000},
				{group = "lifedayRare", chance = 2500000},
				{group = "lifedayLegends", chance = 2500000},
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "elite_npc_drops", chance = 1000000},
				{group = "clothing_attachments", chance = 2500000},
				{group = "melee_polearm", chance = 1000000},
				{group = "lifedayRare", chance = 3000000},
				{group = "lifedayLegends", chance = 2500000},
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "lifedayCommon1", chance = 3500000},
				{group = "lifedayCommon2", chance = 3000000},
				{group = "lifedayCommon3", chance = 2500000},
				{group = "carbines", chance = 500000},
				{group = "rifles", chance = 500000},
			},
			lootChance = 10000000
		},
		{
		groups = {
				{group = "lifedayCommon1", chance = 3500000},
				{group = "lifedayCommon2", chance = 3000000},
				{group = "lifedayCommon3", chance = 2500000},
				{group = "carbines", chance = 500000},
				{group = "rifles", chance = 500000},
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "lifedayCommon1", chance = 3500000},
				{group = "lifedayCommon2", chance = 3000000},
				{group = "lifedayCommon3", chance = 2500000},
				{group = "melee_weapons", chance = 500000},
				{group = "melee_unarmed", chance = 500000},
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "lifedayCommon1", chance = 3500000},
				{group = "lifedayCommon2", chance = 3000000},
				{group = "lifedayCommon3", chance = 2500000},
				{group = "melee_weapons", chance = 500000},
				{group = "melee_unarmed", chance = 500000},
			},
			lootChance = 10000000
		},
		{
	        groups = {
				{group = "lifedayCommon1", chance = 3500000},
				{group = "lifedayCommon2", chance = 3000000},
				{group = "lifedayCommon3", chance = 2500000},
				{group = "melee_weapons", chance = 500000},
				{group = "melee_unarmed", chance = 500000},
			},
			lootChance = 10000000
		},
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"creatureareaattack",""},
		{"creatureareadisease",""},
		{"creatureareableeding",""},
		{"creatureareacombo","stateAccuracyBonus=100"},
		{"creatureareaknockdown","stateAccuracyBonus=100"}
	}
}

CreatureTemplates:addCreatureTemplate(gorax_grinch_med, "gorax_grinch_med")
