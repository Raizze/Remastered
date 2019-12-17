
object_tangible_deed_vehicle_deed_speeder_sith_deed = object_tangible_deed_vehicle_deed_shared_speeder_sith_deed:new {

	templateType = VEHICLEDEED,

	controlDeviceObjectTemplate = "object/intangible/vehicle/sith_speeder_pcd.iff",
	generatedObjectTemplate = "object/mobile/vehicle/sith_speeder.iff",

	numberExperimentalProperties = {1, 1, 1},
	experimentalProperties = {"XX", "XX", "SR"},
	experimentalWeights = {1, 1, 1},
	experimentalGroupTitles = {"null", "null", "exp_durability"},
	experimentalSubGroupTitles = {"null", "null", "hit_points"},
	experimentalMin = {0, 0, 4500},
	experimentalMax = {0, 0, 5500},
	experimentalPrecision = {0, 0, 0},
	experimentalCombineType = {0, 0, 1},
}
ObjectTemplates:addTemplate(object_tangible_deed_vehicle_deed_speeder_sith_deed, "object/tangible/deed/vehicle_deed/speeder_sith_deed.iff")
