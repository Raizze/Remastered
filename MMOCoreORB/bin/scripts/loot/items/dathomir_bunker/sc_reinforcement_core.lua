
sc_reinforcement_core = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Shadow Collective Advanced Reinforcement Core",
	directObjectTemplate = "object/tangible/component/weapon/reinforcement_core_advanced.iff",
	craftingValues = {
		{"mindamage",30,65,0},
		{"maxdamage",30,65,0},
		{"attackspeed",-0.4,-0.7,1},
		{"woundchance",0,8,0},
		{"hitpoints",100,500,0},
		{"midrangemod",8,24,0},
		{"attackhealthcost",13,-1,0},
		{"attackactioncost",13,-1,0},
		{"attackmindcost",13,-1,0},
		{"useCount",1,5,0},
	},
	customizationStringNames = {},
	customizationValues = {}
}

addLootItemTemplate("sc_reinforcement_core", sc_reinforcement_core)
