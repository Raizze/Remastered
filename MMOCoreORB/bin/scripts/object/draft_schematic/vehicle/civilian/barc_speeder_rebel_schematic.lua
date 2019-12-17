object_draft_schematic_vehicle_civilian_barc_speeder_rebel_schematic  = object_draft_schematic_vehicle_civilian_shared_barc_speeder_rebel_schematic:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Armored Barc Speeder - REBEL",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 1,
	size = 1,
	factoryCrateSize = 1,

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
	resourceTypes = {"metal_nonferrous", "metal_ferrous"},
	resourceQuantities = {1000, 1500},
	contribution = {100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/barc_speeder_rebel_deed.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_barc_speeder_rebel_schematic, "object/draft_schematic/vehicle/civilian/barc_speeder_rebel_schematic.iff")
