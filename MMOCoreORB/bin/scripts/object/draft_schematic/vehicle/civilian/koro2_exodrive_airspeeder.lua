object_draft_schematic_vehicle_civilian_koro2_exodrive_airspeeder = object_draft_schematic_vehicle_civilian_shared_koro2_exodrive_airspeeder:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Koro-2 Exodrive Airspeeder",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 20,
	size = 1,
  	factoryCrateSize = 0,

	xpType = "crafting_general",
	xp = 4200,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "clothing_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"vehicle_body", "stabilizor_subframe", "avionic_subassembly", "repulsor_assembly", "cockpit_fitout", "structural_frame"},
	ingredientSlotType = {0, 0, 0, 0, 0, 0},
	resourceTypes = {"metal_nonferrous", "petrochem_inert_polymer", "copper", "mineral", "fiberplast", "metal_ferrous"},
	resourceQuantities = {1600, 400, 600, 800, 200, 6400},
	contribution = {100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/tcg/series3/vehicle_deed_koro2_exodrive_airspeeder.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_koro2_exodrive_airspeeder, "object/draft_schematic/vehicle/civilian/koro2_exodrive_airspeeder.iff")
