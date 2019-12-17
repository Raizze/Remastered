NabooKaadaraOutpostScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "NabooKaadaraOutpostScreenPlay"
}

registerScreenPlay("NabooKaadaraOutpostScreenPlay", true)

function NabooKaadaraOutpostScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnSceneObjects()
		self:spawnMobiles()
	end
end


function NabooKaadaraOutpostScreenPlay:spawnSceneObjects()

	--Terminal
	spawnSceneObject("naboo", "object/tangible/beta/beta_terminal_wound.iff", 5356, -196.9, 6429, 0, 1, 0, 0, 0)
	spawnSceneObject("naboo", "object/tangible/terminal/terminal_mission_imperial.iff", 5356, -197.3, 6433, 0.5, 0.260075, 0, 80, 0)
	spawnSceneObject("naboo", "object/tangible/terminal/imp_travel_term.iff", 5354, -197.3, 6443, 0, 0, 0, 1, 0)
	
end

function NabooKaadaraOutpostScreenPlay:spawnMobiles()
	--Outside
	spawnMobile("naboo", "imperial_recruiter", 0, 5363, -197, 6432, -101, 0)

	--Sentries
	
	spawnMobile("naboo", "stormtrooper_sentry", 360, 5369.9, -197.3, 6451.6, -22, 0)
	spawnMobile("naboo", "stormtrooper_sentry", 360, 5358.2, -197.4, 6449.8, -26, 0)

	spawnMobile("naboo", "stormtrooper_rifleman_sentry", 360, 5377.1, -197.1, 6443.9, -95, 0)
	spawnMobile("naboo", "stormtrooper_sniper_sentry", 360, 5365.3, -197.0, 6432.6, -10, 0)
	spawnMobile("naboo", "stormtrooper_squad_leader_sentry", 360, 5354.2, -197.3, 6440.5, 80, 0)

	spawnMobile("naboo", "stormtrooper_combat_medic_sentry", 360, 5378.7, -196.3, 6411.0, 169, 0)
	spawnMobile("naboo", "stormtrooper_rifleman_sentry", 360, 5362.7, -196.4, 6408.7, 169, 0)

	spawnMobile("naboo", "stormtrooper_bombardier_sentry", 360, 5329.9, -196.9, 6419.9, -2, 0)
	spawnMobile("naboo", "stormtrooper_bombardier_sentry", 360, 5336.7, -197.0, 6424.6, -63, 0)
	
end
