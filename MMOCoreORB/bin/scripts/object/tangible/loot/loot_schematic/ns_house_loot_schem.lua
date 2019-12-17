object_tangible_loot_loot_schematic_ns_house_loot_schem = object_tangible_loot_loot_schematic_shared_ns_house_loot_schem:new {
	templateType = LOOTSCHEMATIC,
	customName = "Nightsister Hut Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/ns_hut_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_ns_house_loot_schem, "object/tangible/loot/loot_schematic/ns_house_loot_schem.iff")

