object_tangible_loot_loot_schematic_barn_house_loot_schem = object_tangible_loot_loot_schematic_shared_barn_house_loot_schem:new {
	templateType = LOOTSCHEMATIC,
	customName = "Barn House Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/barn_no_planet_restriction_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_barn_house_loot_schem, "object/tangible/loot/loot_schematic/barn_house_loot_schem.iff")

