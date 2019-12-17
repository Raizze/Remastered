object_draft_schematic_vehicle_civilian_panning_droid = object_draft_schematic_vehicle_civilian_shared_panning_droid:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Panning Droid",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 1,
	size = 1,
	factoryCrateSize = 50,

	xpType = "crafting_general",
	xp = 1600,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "clothing_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"vehicle_body", "stabilizor_subframe", "avionic_subassembly", "repulsor_assembly", "cockpit_fitout", "structural_frame"},
	ingredientSlotType = {0, 0, 0, 0, 0, 0},
	resourceTypes = {"metal_nonferrous", "copper", "metal_ferrous", "metal_ferrous", "ore_carbonate_alantium", "ore_carbonate_alantium"},
	resourceQuantities = {2000, 1500, 1250, 2500, 750, 1500},
	contribution = {100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/mustafar_panning_droid.iff",

	additionalTemplates = {}

}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_panning_droid, "object/draft_schematic/vehicle/civilian/panning_droid.iff")
