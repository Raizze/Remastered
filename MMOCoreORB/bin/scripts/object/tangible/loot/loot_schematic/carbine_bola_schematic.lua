object_tangible_loot_loot_schematic_carbine_bola_schematic = object_tangible_loot_loot_schematic_shared_carbine_bola_schematic:new {
	templateType = LOOTSCHEMATIC,
	objectMenuComponent = "LootSchematicMenuComponent",
	attributeListComponent = "LootSchematicAttributeListComponent",
	requiredSkill = "crafting_weaponsmith_master",
	targetDraftSchematic = "object/draft_schematic/weapon/carbine_bola.iff",
	targetUseCount = 1
}

ObjectTemplates:addTemplate(object_tangible_loot_loot_schematic_carbine_bola_schematic, "object/tangible/loot/loot_schematic/carbine_bola_schematic.iff")
