object_tangible_loot_loot_schematic_landspeeder_v35_schematic = object_tangible_loot_loot_schematic_shared_landspeeder_v35_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_artisan_master",
	targetDraftSchematic = "object/draft_schematic/vehicle/civilian/landspeeder_v35.iff",
	targetUseCount = 5,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_landspeeder_v35_schematic, "object/tangible/loot/loot_schematic/landspeeder_v35_schematic.iff")
