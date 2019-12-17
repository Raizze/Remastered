object_tangible_loot_loot_schematic_atat_house_loot_schem = object_tangible_loot_loot_schematic_shared_atat_house_loot_schem:new {
	templateType = LOOTSCHEMATIC,
	customName = "AT-AT House Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/atat_house_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_atat_house_loot_schem, "object/tangible/loot/loot_schematic/atat_house_loot_schem.iff")

