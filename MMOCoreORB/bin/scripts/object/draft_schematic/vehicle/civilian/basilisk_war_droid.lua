object_draft_schematic_vehicle_civilian_basilisk_war_droid = object_draft_schematic_vehicle_civilian_shared_basilisk_war_droid:new {

	templateType = DRAFTSCHEMATIC,

	customObjectName = "Basilisk War Droid",

	craftingToolTab = 16, -- (See DraftSchematicObjectTemplate.h)
	complexity = 1,
	size = 1,
	factoryCrateSize = 0,

	xpType = "crafting_general",
	xp = 75000,

	assemblySkill = "general_assembly",
	experimentingSkill = "general_experimentation",
	customizationSkill = "clothing_customization",

	customizationOptions = {},
	customizationStringNames = {},
	customizationDefaults = {},

	ingredientTemplateNames = {"craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n", "craft_vehicle_ingredients_n"},
	ingredientTitleNames = {"vehicle_body", "stabilizor_subframe", "avionic_subassembly", "repulsor_assembly", "cockpit_fitout", "structural_frame","power_plant_mk3"},
	ingredientSlotType = {0, 0, 0, 0, 0, 1},
	resourceTypes = {"metal_nonferrous", "copper", "metal_ferrous", "metal_ferrous", "ore_carbonate_alantium", "object/tangible/component/vehicle/shared_veh_power_plant_mk3.iff"},
	resourceQuantities = {2000, 1500, 1250, 2500, 1500, 1},
	contribution = {100, 100, 100, 100, 100, 100},

	targetTemplate = "object/tangible/deed/vehicle_deed/basilisk_war_droid.iff",

	additionalTemplates = {}
}

ObjectTemplates:addTemplate(object_draft_schematic_vehicle_civilian_basilisk_war_droid, "object/draft_schematic/vehicle/civilian/basilisk_war_droid.iff")
