object_tangible_loot_loot_schematic_wearable_backpack_recon_schematic = object_tangible_loot_loot_schematic_shared_wearable_backpack_recon_schematic:new {
	templateType = LOOTSCHEMATIC,
	customName = "Recon Backpack Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_tailor_master",
	targetDraftSchematic = "object/draft_schematic/clothing/clothing_wearable_backpack_recon.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_wearable_backpack_recon_schematic, "object/tangible/loot/loot_schematic/wearable_backpack_recon_schematic.iff")
