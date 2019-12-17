object_tangible_loot_loot_schematic_mechno_chair_schematic = object_tangible_loot_loot_schematic_shared_mechno_chair_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_artisan_master",
	targetDraftSchematic = "object/draft_schematic/vehicle/civilian/mechno_chair.iff",
	targetUseCount = 5,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_mechno_chair_schematic, "object/tangible/loot/loot_schematic/mechno_chair_schematic.iff")
