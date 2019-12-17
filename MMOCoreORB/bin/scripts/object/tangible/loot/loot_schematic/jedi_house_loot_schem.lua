object_tangible_loot_loot_schematic_jedi_house_loot_schem = object_tangible_loot_loot_schematic_shared_jedi_house_loot_schem:new {
	templateType = LOOTSCHEMATIC,
	customName = "Jedi Meditation Room Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/jedi_house_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_jedi_house_loot_schem, "object/tangible/loot/loot_schematic/jedi_house_loot_schem.iff")

