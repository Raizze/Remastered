object_tangible_loot_loot_schematic_wearable_backpack_armored_schematic = object_tangible_loot_loot_schematic_shared_wearable_backpack_armored_schematic:new {
	templateType = LOOTSCHEMATIC,
	customName = "Armored Backpack Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_wearable_backpack_armored.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_wearable_backpack_armored_schematic, "object/tangible/loot/loot_schematic/wearable_backpack_armored_schematic.iff")
