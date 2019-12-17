SennexCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "SennexCaveScreenPlay",
	
	lootContainers = {
		134411,
		8496263,
		8496262,
		8496261,
		8496260
	},
	
	lootLevel = 90,	

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 160000},
				{group = "junk", chance = 7240000},
				{group = "heavy_weapons_consumable", chance = 500000},
				{group = "rifles", chance = 500000},
				{group = "carbines", chance = 500000},
				{group = "pistols", chance = 500000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000}
			},
			lootChance = 8000000
		}					
	},
	
	lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("SennexCaveScreenPlay", true)

function SennexCaveScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function SennexCaveScreenPlay:spawnMobiles()
	spawnMobile("tatooine", "sennex_guard_poi", 900, 116.123, -66.2826, -95.3285, 0, 5995572)
	spawnMobile("tatooine", "sennex_guard_poi", 900, 129.935, -66.7125, -106.683, 0, 5995572)
	spawnMobile("tatooine", "sennex_guard_poi", 900, 114.867, -66.4634, -117.855, 0, 5995572)
	spawnMobile("tatooine", "sennex_slavemaster_poi", 900, 143.509, -66.3559, -97.4195, 0, 5995572)
	spawnMobile("tatooine", "sennex_hunter_poi", 900, 73.8337, -66.3036, -137.968, 0, 5995571)
	spawnMobile("tatooine", "sennex_hunter_poi", 900, 78.5872, -65.3413, -142.072, 0, 5995571)
	spawnMobile("tatooine", "sennex_guard_poi", 900, 94.7662, -66.4373, -126.37, 0, 5995571)
	spawnMobile("tatooine", "sennex_hunter_poi", 900, 55.9044, -77.0308, -89.3457, 0, 5995570)
	spawnMobile("tatooine", "sennex_hunter_poi", 900, 54.9212, -71.576, -113.891, 0, 5995570)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 64.2851, -75.4256, -63.1042, 0, 5995568)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 94.6285, -75.6847, -64.7793, 0, 5995568)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 96.0028, -74.9623, -60.3445, 0, 5995568)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 91.5029, -67.4595, -39.297, 0, 5995567)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 92.9404, -61.9192, -14.6306, 0, 5995567)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 86.7526, -61.1646, -7.92715, 0, 5995567)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 49.9988, -47.6495, -10.4063, 0, 5995566)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 42.2651, -46.4763, -13.0341, 0, 5995566)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 53.5455, -48.8176, -60.8162, 0, 5995566)
	spawnMobile("tatooine", "sennex_lookout_poi", 900, 46.289, -47.8764, -59.2666, 0, 5995566)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 26.4313, -43.0135, -66.9426, 0, 5995566)
	spawnMobile("tatooine", "sennex_lookout_poi", 900, 26.5043, -37.7114, -31.1657, 0, 5995566)
	spawnMobile("tatooine", "sennex_lookout_poi", 900, 22.1221, -34.8329, -24.0482, 0, 5995566)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 54.5038, -68.105, -36.6345, 0, 5995566)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 54.0815, -68.2377, -40.9112, 0, 5995566)
	spawnMobile("tatooine", "sennex_lookout_poi", 900, 13.3221, -22.336, -6.4, 0, 5995565)
	spawnMobile("tatooine", "sennex_lookout_poi", 900, -14.763, -4.95023, -9.4686, 0, 5995565)

	--Beetles
	spawnMobile("tatooine", "cave_beetle", 900, 84.6138, -46.3756, -111.955, 0, 5995569)
	spawnMobile("tatooine", "large_cave_beetle", 600, 90.6391, -46.5946, -107.052, 0, 5995569)
	spawnMobile("tatooine", "cave_beetle", 900, 94.9631, -46.6007, -134.941, 0, 5995575)
	spawnMobile("tatooine", "cave_beetle", 900, 88.5285, -46.5252, -146.986, 0, 5995575)
	spawnMobile("tatooine", "large_cave_beetle", 900, 82.3354, -46.5893, -144.681, 0, 5995575)
	spawnMobile("tatooine", "cave_beetle", 900, 77.9578, -46.3635, -137.141, 0, 5995575)
	spawnMobile("tatooine", "cave_beetle", 900, 49.3657, -51.5992, -82.1096, 0, 5995574)
	spawnMobile("tatooine", "cave_beetle", 900, 54.0389, -48.7402, -105.26, 0, 5995574)
	spawnMobile("tatooine", "cave_beetle", 900, 47.5229, -51.848, -87.5113, 0, 5995574)

	---OutSide Beetles
	spawnMobile("tatooine", "dune_beetle", 900, 6547.05, 108.1, -1311.56, 0, 0)
	spawnMobile("tatooine", "dune_beetle", 900, 6552.22, 101.1, -1325.97, 0, 0)
	spawnMobile("tatooine", "dune_beetle", 900, 6566.36, 103.5, -1330.49, 0, 0)

	--Rem Custom
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 21.6984, -41.9845, -63.5797, 46, 5995566)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 33.1833, -44.724, -66.6928, -82, 5995566)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 49.3853, -48.2937, -66.957, -29, 5995566)
	spawnMobile("tatooine", "sennex_guard_poi", 900, 44.6896, -47.5457, -41.7845, -160, 5995566)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 43.9721, -46.1373, -19.2697, 130, 5995566)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 48.3286, -47.5454, -15.9522, -150, 5995566)
	spawnMobile("tatooine", "sennex_hunter_poi", 900, 54.1834, -49.188, -29.7443, -49, 5995566)

	spawnMobile("tatooine", "sennex_hunter_poi", 900, 87.2687, -62.1948, -14.7975, -128, 5995567)
	spawnMobile("tatooine", "sennex_lookout_poi", 900, 90.3761, -62.3618, -18.5977, -51, 5995567)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 86.9059, -70.2995, -45.8966, 19, 5995567)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 81.0164, -68.7324, -40.7164, 109, 5995567)
	spawnMobile("tatooine", "sennex_guard_poi", 900, 70.854, -68.8968, -38.5143, 49, 5995567)

	spawnMobile("tatooine", "sennex_hunter_poi", 900, 64.4547, -75.9977, -70.2771, 21, 5995568)
	spawnMobile("tatooine", "sennex_guard_poi", 900, 70.0527, -75.1523, -63.2813, 65, 5995568)
	spawnMobile("tatooine", "sennex_lookout_poi", 900, 93.8278, -75.6307, -61.4804, -56, 5995568)
	spawnMobile("tatooine", "sennex_hunter_poi", 900, 89.8692, -76.2686, -66.9616, -48, 5995568)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 81.4521, -76.6381, -88.3036, 59, 5995568)

	spawnMobile("tatooine", "sennex_warder_poi", 900, 53.4003, -77.1713, -92.4605, 40, 5995570)
	spawnMobile("tatooine", "sennex_lookout_poi", 900, 53.2162, -72.8781, -109.7222, 77, 5995570)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 61.2476, -66.2327, -134.686, 0, 5995570)
	spawnMobile("tatooine", "sennex_guard_poi", 900, 62.4729, -66.6886, -133.001, -81, 5995570)

	spawnMobile("tatooine", "sennex_slaver_poi", 900, 79.4117, -65.6338, -138.645, -137, 5995571)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 88.2513, -66.9745, -138.895, -120, 5995571)

	spawnMobile("tatooine", "sennex_slaver_poi", 900, 112.331, -66.5337, -106.081, -134, 5995572)
	spawnMobile("tatooine", "sennex_hunter_poi", 900, 118.788, -66.2384, -108.778, -61, 5995572)
	spawnMobile("tatooine", "sennex_slaver_poi", 900, 127.829, -66.7941, -126.659, -106, 5995572)
	spawnMobile("tatooine", "sennex_guard_poi", 900, 135.959, -66.6263, -122.682, -45, 5995572)
	spawnMobile("tatooine", "sennex_lookout_poi", 900, 153.5, -66.0232, -126.464, -67, 5995572)
	spawnMobile("tatooine", "sennex_hunter_poi", 900, 151.451, -66.8826, -121.733, -144, 5995572)
	spawnMobile("tatooine", "sennex_warder_poi", 900, 147.395, -66.9596, -125.779, -35, 5995572)
	spawnMobile("tatooine", "sennex_guard_poi", 900, 141.371, -66.8577, -89.9338, -142, 5995572)
	spawnMobile("tatooine", "sennex_hunter_poi", 900, 136.134, -67.07, -91.9242, -117, 5995572)

	spawnMobile("tatooine", "sennex_slavemaster_poi", 900, 188.616, -66.3032, -100.78, 112, 5995573)
	spawnMobile("tatooine", "sennex_slavemaster_poi", 900, 185.786, -65.9659, -96.8206, -137, 5995573)
	spawnMobile("tatooine", "sennex_lookout_poi", 900, 183.995, -65.717, -106.576, 6, 5995573)
end
