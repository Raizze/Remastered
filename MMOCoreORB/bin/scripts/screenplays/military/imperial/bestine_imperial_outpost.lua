BestineImperialOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "BestineImperialOutpostScreenPlay"
}

registerScreenPlay("BestineImperialOutpostScreenPlay", true)

function BestineImperialOutpostScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end

function BestineImperialOutpostScreenPlay:spawnSceneObjects()
		
	-- Terminals
	spawnSceneObject("tatooine", "object/tangible/beta/beta_terminal_wound.iff", -1142.92, 98.0, -3891.12, 0, 0, 0, 1, 0)
	spawnSceneObject("tatooine", "object/tangible/terminal/imp_travel_term.iff", -1132, 98.0, -3892, 0, 0, 0, 1, 0)

end

function BestineImperialOutpostScreenPlay:spawnMobiles()
	
	--Outside wall perimeter

	--Inside walls

	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1134.9, 98.0, -3889.1, 1, 0)
	spawnMobile("tatooine", "stormtrooper_rifleman_sentry", 450, -1139.4, 98.0, -3889.2, -1, 0)
	spawnMobile("tatooine", "stormtrooper_sniper_sentry", 450, -1126.9, 98.0, -3894.6, -43, 0)
	spawnMobile("tatooine", "stormtrooper_squad_leader_sentry", 450, -1133.3, 98.0, -3898.6, 0, 0)
	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1131.9, 98.0, -3898.4, -20, 0)
	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1137.3, 98.0, -3897.5, 0, 0)
	spawnMobile("tatooine", "stormtrooper_combat_medic_sentry", 450, -1136.1, 98.0, -3898.2, 0, 0)
	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1146.9, 98.0, -3906.9, -178, 0)
	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1143, 98.0, -3910.2, -137, 0)
	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1142.1, 98.0, -3903.2, 18, 0)
--	spawnMobile("tatooine", "stormtrooper_captain_sentry", 450, -1134.7, 98.0, -3902.0, -12, 0)
	spawnMobile("tatooine", "stormtrooper_sniper_sentry", 450, -1149.2, 98.0, -3904.0, 42, 0)
	spawnMobile("tatooine", "stormtrooper_rifleman_sentry", 450, -1149.4, 98.0, -3898.9, 147, 0)
	spawnMobile("tatooine", "stormtrooper_combat_medic_sentry", 450, -1148.6, 98.0, -3910.0, -170, 0)
	spawnMobile("tatooine", "stormtrooper_bombardier_sentry", 450, -1146.3, 98.0, -3911.3, -153, 0)
	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1144.4, 98.0, -3919.8, 155, 0)
	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1146.0, 98.0, -3919.0, -138, 0)
	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1149.4, 98.0, -3916.5, -178, 0)
	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1153.5, 98.0, -3912.2, 153, 0)
	spawnMobile("tatooine", "stormtrooper_sentry", 450, -1154.0, 98.0, -3918.1, 179, 0)

	-- Where the Zephy load in point should be (where players arrive when they travel into the base)

	-- Where the travel terminal should be

end
