object_draft_schematic_vehicle_civilian_xj6_air_speeder_schematic = object_draft_schematic_vehicle_civilian_shared_xj6_air_speeder_schematic:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "XJ6 Air Speeder",

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

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"vehicle_body", "structural_frame"},
	ingredientSlotType = {0, 0},
	resourceTypes = {"metal_nonferrous", "crystalline_gallinorian"},
	resourceQuantities = {3500, 5500},
	contribution = {100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/xj6_air_speeder_deed.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_xj6_air_speeder_schematic, "object/draft_schematic/vehicle/civilian/xj6_air_speeder_schematic.iff")
