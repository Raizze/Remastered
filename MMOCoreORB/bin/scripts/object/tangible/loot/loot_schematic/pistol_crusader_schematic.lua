object_tangible_loot_loot_schematic_pistol_crusader_schematic = object_tangible_loot_loot_schematic_shared_pistol_crusader_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/pistol_crusader.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_pistol_crusader_schematic, "object/tangible/loot/loot_schematic/pistol_crusader_schematic.iff")
