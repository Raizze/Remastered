DantooineRebelBaseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "DantooineRebelBaseScreenPlay"
}

registerScreenPlay("DantooineRebelBaseScreenPlay", true)

function DantooineRebelBaseScreenPlay:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnSceneObjects()
	end
end

function DantooineRebelBaseScreenPlay:spawnSceneObjects()

	-- Terminals
	spawnSceneObject("dantooine", "object/tangible/beta/beta_terminal_wound.iff", -6813.57, 46.05, 5514.83, 0, 0, 0, 1, 0)
	spawnSceneObject("dantooine", "object/tangible/terminal/terminal_mission_rebel.iff", -6832.57, 46, 5510.5, 0, 1, 0, 0, 0)
	spawnSceneObject("dantooine", "object/tangible/terminal/reb_travel_term.iff", -6832.88, 46, 5492.89, 0, 0, 0, 1, 0)	

end
