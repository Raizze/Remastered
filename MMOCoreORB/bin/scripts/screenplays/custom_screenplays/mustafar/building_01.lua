BuildingTest01Screenplay = CityScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "BuildingTest01Screenplay",

	planet = "mustafar",

}

registerScreenPlay("BuildingTest01Screenplay", true)

function BuildingTest01Screenplay:start()
	if (isZoneEnabled(self.planet)) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function BuildingTest01Screenplay:spawnSceneObjects()

	--outside starport
	spawnSceneObject(self.planet, "object/building/mustafar/dungeon/monster_lair/must_monster_lair.iff", 1420, -5, 53, 0, math.rad(0) )
	spawnSceneObject(self.planet, "object/building/heroic/ig88_factory_arena.iff", 1420, -5, 120, 0, math.rad(0) )
	spawnSceneObject(self.planet, "object/building/mustafar/dungeon/decrepit_droid_factory.iff", 1420, -5, 190, 0, math.rad(0) )
	spawnSceneObject(self.planet, "object/building/mustafar/dungeon/old_republic_facility.iff", 1420, -5, 220, 0, math.rad(0) )
	spawnSceneObject(self.planet, "object/building/general/npe_space_station.iff", 1420, -5, 300, 0, math.rad(0) )
	spawnSceneObject(self.planet, "object/building/heroic/echo_base.iff", 1420, -5, 600, 0, math.rad(0) )
	
	
	
	
end

function BuildingTest01Screenplay:spawnMobiles()


	--local pNpc = spawnMobile(self.planet, "chassis_dealer",60,2.29774,0.639422,67.5349,157.943,1261655)
	--self:setMoodString(pNpc, "neutral")

end
