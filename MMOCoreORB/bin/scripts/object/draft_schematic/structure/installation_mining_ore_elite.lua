object_draft_schematic_structure_installation_mining_ore_elite = object_draft_schematic_structure_shared_installation_mining_ore_elite:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Deed for: ELITE Mineral Mining Installation",

	craftingToolTab = 1024, -- (See DraftSchematicObjectTemplate.h)
	complexity = 35,
	size = 12,
	factoryCrateSize = 1,

	xpType = "crafting_structure_general",
	xp = 3900,

	assemblySkill = "structure_assembly",
	experimentingSkill = "structure_experimentation",
	customizationSkill = "structure_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n", "craft_structure_ingredients_n"},
	ingredientTitleNames = {"load_bearing_frame", "body_shell_structure", "body_casing", "structure_foundation", "bore_mechanism", "ore_storage_tank", "boreing_mechanism_buffers_and_bushings", "power_supply_unit", "ore_storage_unit", "resource_handling_system"},
	ingredientSlotType = {0, 0, 2, 0, 0, 2, 0, 1, 1, 1},
	resourceTypes = {"steel", "metal", "object/tangible/component/structure/shared_wall_module.iff", "metal", "metal", "object/tangible/component/structure/shared_wall_module.iff", "chemical", "object/tangible/component/structure/shared_generator_turbine.iff", "object/tangible/component/structure/shared_structure_small_storage_section.iff", "object/tangible/component/structure/shared_ore_mining_unit.iff"},
	resourceQuantities = {1000, 1400, 4, 600, 800, 8, 800, 8, 8, 8},
	contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/deed/harvester_deed/harvester_ore_elite_deed.iff",

	additionalTemplates = {}

}

ObjectTemplates:addTemplate(object_draft_schematic_structure_installation_mining_ore_elite, "object/draft_schematic/structure/installation_mining_ore_elite.iff")
