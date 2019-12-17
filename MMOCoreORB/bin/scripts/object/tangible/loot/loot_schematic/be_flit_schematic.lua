object_tangible_loot_loot_schematic_be_flit_schematic = object_tangible_loot_loot_schematic_shared_be_flit_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "outdoors_bio_engineer_master",
	targetDraftSchematic = "object/draft_schematic/bio_engineer/creature/creature_flit.iff",
	targetUseCount = 3,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_be_flit_schematic, "object/tangible/loot/loot_schematic/be_flit_schematic.iff")