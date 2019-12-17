object_draft_schematic_vehicle_civilian_sith_speeder_schematic = object_draft_schematic_vehicle_civilian_shared_sith_speeder_schematic:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Sith Speeder",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 1,
	size = 1,
	factoryCrateSize = 0,

	xpType = "crafting_general",
	xp = 1600,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "clothing_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"vehicle_body", "structural_frame", "power_plant_mk3"},
	ingredientSlotType = {0, 0, 1},
	resourceTypes = {"ore_carbonate_alantium", "metal_ferrous", "object/tangible/component/vehicle/shared_veh_power_plant_mk3.iff"},
	resourceQuantities = {1500, 5500, 1},
	contribution = {100, 100, 100},


	targetTemplate = "object/tangible/deed/vehicle_deed/speeder_sith_deed.iff",

	additionalTemplates = {}
}
ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_sith_speeder_schematic, "object/draft_schematic/vehicle/civilian/sith_speeder_schematic.iff")
