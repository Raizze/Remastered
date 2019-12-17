object_tangible_loot_loot_schematic_hoverlifter_speeder_schematic = object_tangible_loot_loot_schematic_shared_hoverlifter_speeder_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_artisan_master",
	targetDraftSchematic = "object/draft_schematic/vehicle/civilian/hoverlifter_speeder.iff",
	targetUseCount = 5,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_hoverlifter_speeder_schematic, "object/tangible/loot/loot_schematic/hoverlifter_speeder_schematic.iff")
