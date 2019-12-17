object_tangible_loot_loot_schematic_be_pharple_schematic = object_tangible_loot_loot_schematic_shared_be_pharple_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "outdoors_bio_engineer_master",
	targetDraftSchematic = "object/draft_schematic/bio_engineer/creature/creature_pharple.iff",
	targetUseCount = 3,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_be_pharple_schematic, "object/tangible/loot/loot_schematic/be_pharple_schematic.iff")