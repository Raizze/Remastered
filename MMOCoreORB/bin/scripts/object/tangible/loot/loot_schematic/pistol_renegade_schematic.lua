object_tangible_loot_loot_schematic_pistol_renegade_schematic = object_tangible_loot_loot_schematic_shared_pistol_renegade_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/pistol_renegade.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_pistol_renegade_schematic, "object/tangible/loot/loot_schematic/pistol_renegade_schematic.iff")
