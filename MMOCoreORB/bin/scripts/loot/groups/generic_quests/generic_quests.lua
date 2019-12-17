generic_quests = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "inkpen_engraved", weight = 50000},
		{groupTemplate = "looted_container", weight = 450000},
		{groupTemplate = "loot_kit_parts", weight = 500000},
		{groupTemplate = "printer_parts", weight = 500000},
		{groupTemplate = "skill_buffs", weight = 500000},
		{groupTemplate = "tailor_components", weight = 500000},
		{groupTemplate = "junk", weight = 7500000},
	}
}

addLootGroupTemplate("generic_quests", generic_quests)
