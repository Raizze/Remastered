object_tangible_loot_loot_schematic_musty_house_loot_schem = object_tangible_loot_loot_schematic_shared_musty_house_loot_schem:new {
	templateType = LOOTSCHEMATIC,
	customName = "Mustafarian Bunker Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_architect_master",
	targetDraftSchematic = "object/draft_schematic/structure/musty_house_schem.iff",
	targetUseCount = 1,
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_musty_house_loot_schem, "object/tangible/loot/loot_schematic/musty_house_loot_schem.iff")

