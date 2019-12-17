AfarathuCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "AfarathuCaveScreenPlay",
	
	lootContainers = {
		8075612,
		8075613,
		8075614,
		8075615,
		8075616
	},
	
	lootLevel = 90,	

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "junk", chance = 7600000},
				{group = "heavy_weapons_consumable", chance = 500000},
				{group = "rifles", chance = 500000},
				{group = "carbines", chance = 500000},
				{group = "pistols", chance = 500000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000}
			},
			lootChance = 8000000
		}					
	},
	
	lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("AfarathuCaveScreenPlay", true)

function AfarathuCaveScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function AfarathuCaveScreenPlay:spawnMobiles()
	-- outside cave
	--spawnCreature("afarathu_ruffian", 300, -2489.6, 2920.0)
	--spawnCreature("afarathu_ruffian", 300, -2494.0, 2913.6)

	-- inside cave
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, -0.6, -13.7, -8.3, 0, 6035620)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, 11.3, -14.2, -5.5, 0, 6035620)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, 9.7, -23.9, -28.3, 0, 6035621)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, -11.3, -30.7, -27.1, 0, 6035621)

	spawnMobile("corellia", "afarathu_cult_follower_poi", 600, -1.8, -40.7, -74.1, 0, 6035622)
	spawnMobile("corellia", "afarathu_cult_follower_poi", 600, 2.6, -40.4, -62.4, 0, 6035622)
	spawnMobile("corellia", "afarathu_cult_follower_poi", 600, 3.4, -41.0, -72.6, 0, 6035622)

	spawnMobile("corellia", "afarathu_ruffian_poi", 600, 49.3, -46.8, -53.7, 0, 6035623)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, 43.8, -46.1, -95.1, 0, 6035623)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, 23.6, -45.7, -102.8, 0, 6035623)

	spawnMobile("corellia", "afarathu_savage_poi", 600, -1.7, -45.8, -147.8, 0, 6035624)
	spawnMobile("corellia", "afarathu_savage_poi", 600, -11.0, -44.4, -136.4, 0, 6035624)
	spawnMobile("corellia", "afarathu_savage_poi", 600, -4.2, -64.0, -234.2, 0, 6035626)
	spawnMobile("corellia", "afarathu_savage_poi", 600, -21.7, -65.4, -244.6, 0, 6035626)

	spawnMobile("corellia", "afarathu_cult_follower_poi", 600, -95.3, -73.7, -170.0, 0, 6035627)
	spawnMobile("corellia", "afarathu_brute_poi", 600, -83.5, -71.6, -169.2, 0, 6035627)
	spawnMobile("corellia", "afarathu_brute_poi", 600, -100.5, -72.9, -159.1, 0, 6035627)
	spawnMobile("corellia", "afarathu_brute_poi", 600, -111.7, -69.4, -170.6, 0, 6035627)

	spawnMobile("corellia", "afarathu_brute_poi", 600, -85.4, -101.5, -111.2, 0, 6035630)
	spawnMobile("corellia", "afarathu_brute_poi", 600, -92.8, -101.1, -111.9, 0, 6035630)
	spawnMobile("corellia", "afarathu_cult_leader", 1800, -90.7, -101.1, -104.8, 0, 6035630)

	--Rem Custom
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, 39.183, -45.8489, -54.5667, -35, 6035623)
	spawnMobile("corellia", "afarathu_cult_follower_poi", 600, 51.3247, -54.9913, -149.908, -59, 6035624)
	spawnMobile("corellia", "afarathu_savage_poi", 600, 17.0069, -45.6171, -126.436, 32, 6035624)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, 52.7858, -47.8731, -123.143, -109, 6035624)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, 52.3219, -48.3263, -126.063, -39, 6035624)
	spawnMobile("corellia", "afarathu_brute_poi", 600, 47.6309, -51.7438, -141.277, -173, 6035624)
	spawnMobile("corellia", "afarathu_savage_poi", 600, 69.6266, -54.0253, -145.963, -102, 6035624)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, 37.8658, -58.3134, -180.092, 52, 6035624)
	spawnMobile("corellia", "afarathu_cult_follower_poi", 600, 43.0248, -56.7863, -182.186, -42, 6035624)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, -21.0559, -64.4804, -220.754, 43, 6035626)
	spawnMobile("corellia", "afarathu_brute_poi", 600, -4.5751, -65.6966, -210.725, -88, 6035626)
	spawnMobile("corellia", "afarathu_cult_follower_poi", 600, -53.0564, -69.4797, -173.636, 171, 6035627)
	spawnMobile("corellia", "afarathu_savage_poi", 600, -63.9666, -70.3237, -174.049, 115, 6035627)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, -64.1821, -69.9252, -194.069, 32, 6035627)
	spawnMobile("corellia", "afarathu_brute_poi", 600, -120.292, -69.8033, -197.712, 138, 6035627)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, -102.413, -70.2789, -125.649, -116, 6035627)
	spawnMobile("corellia", "afarathu_cult_follower_poi", 600, -79.8686, -70.292, -123.832, -122, 6035627)
	spawnMobile("corellia", "afarathu_savage_poi", 600, -107.982, -69.9482, -123.788, 173, 6035627)
	spawnMobile("corellia", "afarathu_brute_poi", 600, -93.2983, -69.7074, -95.2193, -142, 6035627)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, -65.0764, -68.4572, -110.617, 107, 6035628)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, -67.6657, -68.3705, -107.782, 114, 6035628)
	spawnMobile("corellia", "afarathu_savage_poi", 600, -53.9169, -69.6255, -90.4151, -102, 6035628)
	spawnMobile("corellia", "afarathu_brute_poi", 600, -50.3199, -68.9025, -98.6824, -30, 6035628)
	spawnMobile("corellia", "afarathu_cult_follower_poi", 600, -23.4069, -69.8554, -86.6309, -146, 6035628)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, -9.70222, -69.0022, -96.1715, -117, 6035628)
	spawnMobile("corellia", "afarathu_brute_poi", 600, -25.0324, -79.9895, -147.857, -19, 6035629)
	spawnMobile("corellia", "afarathu_savage_poi", 600, -29.8376, -80.0618, -146.13, 66, 6035629)
	spawnMobile("corellia", "afarathu_savage_poi", 600, -99.8595, -99.5573, -110.341, 60, 6035630)
	spawnMobile("corellia", "afarathu_ruffian_poi", 600, -81.1157, -99.6681, -100.053, -101, 6035630)
end
