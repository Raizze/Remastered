object_tangible_loot_loot_schematic_snowtrooper_chest_schematic = object_tangible_loot_loot_schematic_shared_snowtrooper_chest_schematic:new {
	templateType = LOOTSCHEMATIC,
	customName = "Snowtrooper Armor Chest Plate Schematic",
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_armorsmith_master",
	targetDraftSchematic = "object/draft_schematic/armor/armor_snowtrooper_chest.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_snowtrooper_chest_schematic, "object/tangible/loot/loot_schematic/snowtrooper_chest_schematic.iff")
