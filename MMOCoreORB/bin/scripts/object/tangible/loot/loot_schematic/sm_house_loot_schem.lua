object_tangible_loot_loot_schematic_sm_house_loot_schem = object_tangible_loot_loot_schematic_shared_sm_house_loot_schem:new {
	templateType = LOOTSCHEMATIC,
	customName = "Singing Mountain Clan Hut Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/sm_hut_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_sm_house_loot_schem, "object/tangible/loot/loot_schematic/sm_house_loot_schem.iff")

