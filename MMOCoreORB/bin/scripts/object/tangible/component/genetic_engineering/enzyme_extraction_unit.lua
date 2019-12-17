object_tangible_component_genetic_engineering_enzyme_extraction_unit = object_tangible_component_genetic_engineering_shared_enzyme_extraction_unit:new {
	objectMenuComponent = "EnzymeExtractorMenuComponent",

	useCount = 12,
	effectiveness = 112,
	attributes = {0, 3, 6},

	numberExperimentalProperties = {1, 1, 2, 1},
	experimentalProperties = {"XX", "XX", "OQ", "DR", "XX"},
	experimentalWeights = {1, 1, 1, 2, 1},
	experimentalGroupTitles = {"null", "null", "exp_charges", "null"},
	experimentalSubGroupTitles = {"null", "null", "charges", "hitpoints"},
	experimentalMin = {0, 0, 1, 1000},
	experimentalMax = {0, 0, 20, 1000},
	experimentalPrecision = {0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 4},
}
ObjectTemplates:addTemplate(object_tangible_component_genetic_engineering_enzyme_extraction_unit, "object/tangible/component/genetic_engineering/enzyme_extraction_unit.iff")
