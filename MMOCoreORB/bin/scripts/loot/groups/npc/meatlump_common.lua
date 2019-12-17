meatlump_common = {
	description = "",
	minimumLevel = 0,
	maximumLevel = 0,
	lootItems = {
		{itemTemplate = "cheap_copper_battery", weight = 1000000},
		{groupTemplate = "wearables_common", weight = 1000000},
		{itemTemplate = "droid_body_schematic", weight = 800000},
		{itemTemplate = "radio_schematic", weight = 800000},
		{itemTemplate = "streetlamp_schematic", weight = 800000},
		{itemTemplate = "meatlump_scrapbook_reward", weight = 700000},
		{itemTemplate = "meatlump_lump", weight = 700000},
		{itemTemplate = "meatlump_newspaper_01", weight = 700000},
		{itemTemplate = "meatlump_newspaper_02", weight = 700000},
		{itemTemplate = "meatlump_newspaper_03", weight = 700000},
		{itemTemplate = "meatlump_newspaper_04", weight = 700000},
		{groupTemplate = "skill_buffs", weight = 1400000}
	}
}

addLootGroupTemplate("meatlump_common", meatlump_common)
