object_tangible_loot_loot_schematic_be_armored_bantha_schematic = object_tangible_loot_loot_schematic_shared_be_armored_bantha_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "outdoors_bio_engineer_master",
	targetDraftSchematic = "object/draft_schematic/bio_engineer/creature/creature_armored_bantha.iff",
	targetUseCount = 3,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_be_armored_bantha_schematic, "object/tangible/loot/loot_schematic/be_armored_bantha_schematic.iff")