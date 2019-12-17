object_tangible_loot_loot_schematic_be_nexu_schematic = object_tangible_loot_loot_schematic_shared_be_nexu_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "outdoors_bio_engineer_master",
	targetDraftSchematic = "object/draft_schematic/bio_engineer/creature/creature_nexu.iff",
	targetUseCount = 3,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_be_nexu_schematic, "object/tangible/loot/loot_schematic/be_nexu_schematic.iff")