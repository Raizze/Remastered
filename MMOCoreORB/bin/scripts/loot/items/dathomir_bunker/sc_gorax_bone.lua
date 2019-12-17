
sc_gorax_bone = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Shadow Collective Blackmarket Gorax Bone",
	directObjectTemplate = "object/tangible/component/weapon/projectile_feed_mechanism_enhancement_gorax.iff",
	craftingValues = {
		{"mindamage",100,155,0},
		{"maxdamage",100,155,0},
		{"useCount",1,6,0},
		{"attackspeed",0,-1.25,0,0},
		{"woundchance",0,0,0,0},
		{"hitpoints",0,0,0,0},
		{"zerorangemod",0,0,0,0},
		{"maxrangemod",0,0,0,0},
		{"midrangemod",0,0,0,0},
		{"attackhealthcost",0,0,0,0},
		{"attackactioncost",0,0,0,0},
		{"attackmindcost",0,0,0,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("sc_gorax_bone", sc_gorax_bone)
