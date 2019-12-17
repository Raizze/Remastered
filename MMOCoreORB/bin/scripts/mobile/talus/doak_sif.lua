doak_sif = Creature:new {
	objectName = "@mob/creature_names:doak_sif",
	socialGroup = "sif",
	faction = "sif",
	level = 112,
	chanceHit = 1.0,
	damageMin = 385,
	damageMax = 480,
	baseXp = 9803,
	baseHAM = 41000,
	baseHAMmax = 48000,
	armor = 1,
	resists = {40,40,60,35,55,70,35,40,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_doak_sif.iff"},
	lootGroups = {
		{
			groups = {
				{group = "erran_sif_bunker_common", chance = 2000000},
				{group = "generic_consoles", chance = 900000},
				{group = "generic_tech", chance = 900000},
				{group = "pistols", chance = 900000},
				{group = "rifles", chance = 900000},
				{group = "carbines", chance = 900000},
				{group = "heavy_weapons", chance = 500000},
				{group = "heavy_weapons_rifle", chance = 500000},
				{group = "skill_buffs", chance = 600000},
				{group = "printer_parts", chance = 1000000},
				{group = "tailor_components", chance = 900000}
			},
			lootChance = 10000000
		},
		{	
			groups = {
				{group = "clothing_attachments", chance = 5000000},
				{group = "armor_attachments", chance = 5000000}	
			},
			lootChance = 200000
		},
		{	
			groups = {
				{group = "erran_sif_bunker_rare", chance = 10000000},	
			},
			lootChance = 300000
		},		
	},
	weapons = {"sif_bunker_weapons"},
	conversationTemplate = "",
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,tkamaster,carbineermaster)
}

CreatureTemplates:addCreatureTemplate(doak_sif, "doak_sif")
