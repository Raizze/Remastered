object_tangible_deed_harvester_deed_harvester_ore_elite_deed = object_tangible_deed_harvester_deed_shared_harvester_ore_elite_deed:new {
	templateType = STRUCTUREDEED,
	placeStructureComponent = "PlaceStructureComponent",
	generatedObjectTemplate = "object/installation/mining_ore/mining_ore_harvester_elite.iff",

	numberExperimentalProperties = {1, 1, 3, 2, 1},
	experimentalProperties = {"XX", "XX", "HR", "SR", "UT", "MA", "UT", "XX"},
	experimentalWeights = {1, 1, 1, 1, 2, 1, 2, 1},
	experimentalGroupTitles = {"null", "null", "expEffeciency", "expStorage", "null"},
	experimentalSubGroupTitles = {"null", "null", "extractrate", "hoppersize", "hitpoints"},
	experimentalMin = {0, 0, 22, 350000, 1000},
	experimentalMax = {0, 0, 32, 450000, 1000},
	experimentalPrecision = {0, 0, 0, 0, 0},
	experimentalCombineType = {0, 0, 1, 1, 4},
}

ObjectTemplates:addTemplate(object_tangible_deed_harvester_deed_harvester_ore_elite_deed, "object/tangible/deed/harvester_deed/harvester_ore_elite_deed.iff")
