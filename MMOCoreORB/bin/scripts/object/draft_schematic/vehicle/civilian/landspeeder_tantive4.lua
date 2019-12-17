object_draft_schematic_vehicle_civilian_landspeeder_tantive4 = object_draft_schematic_vehicle_civilian_shared_landspeeder_tantive4:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Tantive IV Landspeeder",

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

	targetTemplate = "object/tangible/deed/vehicle_deed/landspeeder_tantive4_deed.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_landspeeder_tantive4, "object/draft_schematic/vehicle/civilian/landspeeder_tantive4.iff")
