object_tangible_loot_loot_schematic_barc_speeder_rebel_schematic = object_tangible_loot_loot_schematic_shared_barc_speeder_rebel_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_artisan_master",
	targetDraftSchematic = "object/draft_schematic/vehicle/civilian/barc_speeder_rebel.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_barc_speeder_rebel_schematic, "object/tangible/loot/loot_schematic/barc_speeder_rebel_schematic.iff")
