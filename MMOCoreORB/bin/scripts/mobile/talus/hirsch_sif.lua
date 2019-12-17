hirsch_sif = Creature:new {
	objectName = "@mob/creature_names:hirsch_sif",
	socialGroup = "sif",
	faction = "sif",
	level = 118,
	chanceHit = 1.0,
	damageMin = 500,
	damageMax = 650,
	baseXp = 10174,
	baseHAM = 46700,
	baseHAMmax = 49000,
	armor = 2,
	resists = {55,65,70,30,70,5,10,55,-1},
	meatType = "",
	meatAmount = 0,
	hideType = "",
	hideAmount = 0,
	boneType = "",
	boneAmount = 0,
	milk = 0,
	tamingChance = 0.000000,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	diet = HERBIVORE,

	templates = {"object/mobile/dressed_hirsch_sif.iff"},
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
			lootChance = 300000
		},
		{	
			groups = {
				{group = "erran_sif_bunker_rare", chance = 10000000},	
			},
			lootChance = 500000
		},		
	},
	weapons = {"sif_bunker_weapons"},
	reactionStf = "@npc_reaction/military",
	attacks = merge(brawlermaster,swordsmanmaster,riflemanmaster)
}

CreatureTemplates:addCreatureTemplate(hirsch_sif, "hirsch_sif")
