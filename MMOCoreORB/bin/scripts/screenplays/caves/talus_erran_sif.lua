TalusErranSifScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "TalusErranSifScreenPlay",

	lootContainers = {
		134417,
		134416,
		134414,
		134415,
		134413,
		134412,
		9815510
	},

	lootLevel = 90,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 160000},
				{group = "junk", chance = 8240000},
				{group = "weapons_all", chance = 1000000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000}
			},
			lootChance = 8000000
		}
	},

	lootContainerRespawn = 1800
}
 
registerScreenPlay("TalusErranSifScreenPlay", true)
 
function TalusErranSifScreenPlay:start()
	if (isZoneEnabled("talus")) then
                self:spawnMobiles()
                self:initializeLootContainers()
        end
end

function TalusErranSifScreenPlay:spawnMobiles()
	spawnMobile("talus", "erran_sif", 1800, -4.9, -13.8, -16.5, 14, 9815433)
	spawnMobile("talus", "hirsch_sif", 1800, -8.0, -13.8, -12.5, 63, 9815433)
	spawnMobile("talus", "doak_sif", 1800, 1.9, -13.8, -12.9, -38, 9815433)
	spawnMobile("talus", "rodian_sif_02_poi", 900, -7.0, -13.8, 1.7, 110, 9815433)
	spawnMobile("talus", "trandoshan_sif_02_poi", 900, 4.1, -6.8, -2.2, -48, 9815431)
	spawnMobile("talus", "trandoshan_sif_02_poi", 900, 7.0, -6.8, -2.6, 164, 9815431)
	spawnMobile("talus", "rodian_sif_02_poi", 900, 4.8, -6.8, -9.0, 164, 9815431)	
	spawnMobile("talus", "trandoshan_sif_02_poi", 900, 4.2, -6.8, -15.3, -112, 9815430)
	spawnMobile("talus", "rodian_sif_poi", 900, 6.3, -6.8, -15.7, -92, 9815430)
	spawnMobile("talus", "trandoshan_sif_02_poi", 900, -1.1, -6.8, -6.3, -63, 9815429)
	spawnMobile("talus", "rodian_sif_02_poi", 900, -3.7, 0.3, -2.2, -9, 9815426)
	spawnMobile("talus", "sif_mercenary_poi", 900, 2143.4, 122.0, -5610.2, -44, 0)
	spawnMobile("talus", "trandoshan_sif_02_poi", 900, 2152.0, 122.0, -5611.0, 68, 0)

	--Rem Custom
	spawnMobile("talus", "sif_mercenary_poi", 900, -1.05961, -13.75, -4.93936, 15, 9815433)
	spawnMobile("talus", "trandoshan_sif_02_poi", 900, 6.44992,-10.25, 8.43281, -158, 9815432)
	spawnMobile("talus", "rodian_sif_02_poi", 900, 5.18854, -10.25, 8.45602, 144, 9815432)
	spawnMobile("talus", "sif_mercenary_poi", 900, 6.78189, -6.75891, -6.38881, -150, 9815431)
	spawnMobile("talus", "rodian_sif_02_poi", 900, -7.06937, -6.76678, -15.9423, -84, 9815430)
	spawnMobile("talus", "trandoshan_sif_02_poi", 900, -2.29941, -6.76678, -12.9131, 59, 9815430)
	spawnMobile("talus", "sif_mercenary_poi", 900, -3.28456, -6.76678, -16.4946, -176, 9815430)
	spawnMobile("talus", "rodian_sif_02_poi", 900, -2.44521, -6.75, -1.14936, -147, 9815429)
	spawnMobile("talus", "rodian_sif_02_poi", 900, -7.53984, -6.75, -7.55749, 25, 9815429)
	spawnMobile("talus", "sif_mercenary_poi", 900, -4.12774, -6.75, -5.2427, -51, 9815429)
	spawnMobile("talus", "trandoshan_sif_02_poi", 900, -4.18217, -6.75, 5.61271, 93, 9815428)
	spawnMobile("talus", "rodian_sif_poi", 900, 3.58574, -3.25, 5.06161, 167, 9815428)
	spawnMobile("talus", "sif_mercenary_poi", 900, -2.92876, 0.25, 0.524132, -30, 9815426)
	spawnMobile("talus", "trandoshan_sif_02_poi", 900, -0.976164, 0.25, 3.35839, 29, 9815426)

end
