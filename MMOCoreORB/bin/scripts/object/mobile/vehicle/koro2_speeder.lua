object_mobile_vehicle_koro2_speeder = object_mobile_vehicle_shared_koro2_speeder:new {
	templateType = VEHICLE,
	decayRate = 15, -- Damage tick per decay cycle
	decayCycle = 600 -- Time in seconds per cycle
}
ObjectTemplates:addTemplate(object_mobile_vehicle_koro2_speeder, "object/mobile/vehicle/koro2_speeder.iff")
