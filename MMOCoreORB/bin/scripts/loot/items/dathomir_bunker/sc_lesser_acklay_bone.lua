
sc_lesser_acklay_bone = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "Shadow Collective Stolen Acklay Bone",
	directObjectTemplate = "object/tangible/component/weapon/acklay_bone_reinforcement_core.iff",
	craftingValues = {
		{"mindamage",75,175},
		{"maxdamage",75,175},
		{"useCount",1,6,0},
		{"attackspeed",0,0,0,0},
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

addLootItemTemplate("sc_lesser_acklay_bone", sc_lesser_acklay_bone)
