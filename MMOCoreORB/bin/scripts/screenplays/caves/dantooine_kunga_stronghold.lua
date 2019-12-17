KungaStrongholdScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "KungaStrongholdScreenPlay",

 	lootContainers = {
		529418,
        	529425,
        	529451,
        	529435
	},
	
	lootLevel = 90,	

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 550000},
				{group = "junk", chance = 8300000},
				{group = "kunga_cave_common", chance = 500000},
				{group = "rem_named_crystals", chance = 50000},
				{group = "clothing_attachments", chance = 300000},
				{group = "armor_attachments", chance = 300000}
			},
			lootChance = 8000000
		}					
	},
	
	lootContainerRespawn = 1800 
}

registerScreenPlay("KungaStrongholdScreenPlay", true)

function KungaStrongholdScreenPlay:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function KungaStrongholdScreenPlay:spawnMobiles()
	spawnMobile("dantooine", "kunga_clan_leader_poi",1800,-63.3,-65.3,-231.8,70,529402)

	spawnMobile("dantooine", "kunga_clan_primalist_poi",900,-65.3,-30.6,-67.2,-28,529378)
	spawnMobile("dantooine", "kunga_clan_primalist_poi",900,-66.5,-31.2,-61.9,-63,529378)
	spawnMobile("dantooine", "kunga_clan_primalist_poi",900,-100.5,-38.4,-121.4,90,529382)
	spawnMobile("dantooine", "kunga_clan_primalist_poi",900,-84.8,-66.3,-161.5,152,529401)
	spawnMobile("dantooine", "kunga_clan_primalist_poi",900,-80.5,-65.6,-157.1,173,529401)

	spawnMobile("dantooine", "kunga_harvester_poi",900,-71.9,-30.3,-42.9,149,529378)
	spawnMobile("dantooine", "kunga_harvester_poi",900,-74.6,-30.1,-44.2,151,529378)
	spawnMobile("dantooine", "kunga_harvester_poi",900,-112.8,-57.8,-33.7,54,529389)
	spawnMobile("dantooine", "kunga_harvester_poi",900,-105.2,-36.8,-61.5,-74,529379)

	spawnMobile("dantooine", "kunga_herbalist_poi",900,-83,-66.3,-192.3,35,529401)
	spawnMobile("dantooine", "kunga_herbalist_poi",900,-100.2,-38.7,-120.3,8,529382)
	spawnMobile("dantooine", "kunga_herbalist_poi",900,-11.6,-30.3,-43.2,-102,529375)
	spawnMobile("dantooine", "kunga_herbalist_poi",900,-77.3,-66.4,-194.2,8,529401)

	spawnMobile("dantooine", "kunga_hunter_poi",900,-107.6,-36.4,-64,-20,529379)
	spawnMobile("dantooine", "kunga_hunter_poi",900,-104.4,-39.5,-116.9,44,529382)
	spawnMobile("dantooine", "kunga_hunter_poi",900,-14.9,-44.1,-100.7,-36,529395)
	spawnMobile("dantooine", "kunga_hunter_poi",900,-8.2,-44,-96.2,-93,529395)

	spawnMobile("dantooine", "kunga_loreweaver_poi",900,-116.7,-58.3,-30.6,108,529389)
	spawnMobile("dantooine", "kunga_loreweaver_poi",900,-107.6,-58.1,-28.6,-119,529389)
	spawnMobile("dantooine", "kunga_loreweaver_poi",900,-166.4,-49.6,-81.1,-17,529383)
	spawnMobile("dantooine", "kunga_loreweaver_poi",900,-97.4,-70.5,-109.7,172,529382)
	spawnMobile("dantooine", "kunga_loreweaver_poi",900,-91,-71.4,-108.8,-158,529382)

	spawnMobile("dantooine", "kunga_rockshaper_poi",900,-13.9,-30.3,-47.8,1,529375)
	spawnMobile("dantooine", "kunga_rockshaper_poi",900,-162,-49.6,-59.9,-18,529383)
	spawnMobile("dantooine", "kunga_rockshaper_poi",900,-75.4,-53.3,-114.2,82,529382)
	spawnMobile("dantooine", "kunga_rockshaper_poi",900,-105.4,-69.9,-112.2,116,529382)
	spawnMobile("dantooine", "kunga_rockshaper_poi",900,-67.3,-65.8,-141.4,-82,529398)

	spawnMobile("dantooine", "kunga_scout_poi",900,-139.1,-49.6,-62.1,76,529379)
	spawnMobile("dantooine", "kunga_scout_poi",900,-141.1,-49.5,-57.7,101,529379)
	spawnMobile("dantooine", "kunga_scout_poi",900,-81.3,-67.7,-132.4,-7,529398)
	spawnMobile("dantooine", "kunga_scout_poi",900,-78.6,-67.4,-132.1,-11,529398)

	spawnMobile("dantooine", "kunga_shaman_poi",900,-39.5,-32.3,-24.4,116,529375)
	spawnMobile("dantooine", "kunga_shaman_poi",900,-170.1,-49.5,-79.2,5,529383)
	spawnMobile("dantooine", "kunga_shaman_poi",900,-175.5,-48.9,-77.3,5,529383)
	spawnMobile("dantooine", "kunga_shaman_poi",900,-40.4,-45.3,-105.3,17,529395)

	spawnMobile("dantooine", "kunga_soothsayer_poi",900,-18.8,-29.8,-22.1,-85,529375)
	spawnMobile("dantooine", "kunga_soothsayer_poi",900,12.9,-35.5,-79.3,0,529393)
	spawnMobile("dantooine", "kunga_soothsayer_poi",900,-7.9,-35.4,-76.8,103,529393)
	spawnMobile("dantooine", "kunga_soothsayer_poi",900,-9,-34.8,-66.2,147,529393)

	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-162.9,7.6,-408.5,52,0)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-146.2,7.2,-411.9,-5,0)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-154.9,6.4,-406.8,179,0)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-0.6,-4.5,15.8,-2,529374)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,0.4,-21.4,-16.9,-2,529374)

	spawnMobile("dantooine", "kunga_warrior_poi",900,-39.8,-44.9,-96.9,64,529395)
	spawnMobile("dantooine", "kunga_warrior_poi",900,-106.1,-58.2,-33.7,-72,529389)
	spawnMobile("dantooine", "kunga_warrior_poi",900,-173,-50,-61.1,62,529383)
	spawnMobile("dantooine", "kunga_warrior_poi",900,-107.7,-54.2,-112.2,-93,529382)
	spawnMobile("dantooine", "kunga_warrior_poi",900,-65,-66.3,-138.9,-69,529398)

	--Rem Custom
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-104.672,-38.688,-80.5135,-168,529384)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-125.643,-37.8734,-79.5175,113,529384)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-104.484,-42.4285,-13.0932,-159,529390)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-136.253,-57.4416,-24.8239,8,529391)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-79.8919,-61.5156,-63.9037,1,529387)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-112.421,-54.4327,-81.0303,110,529384)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-173.746,-54.0365,-116.4,108,529385)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-61.0874,-42.0219,-7.75639,178,529377)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-30.4097,-35.5983,-66.1314,112,529394)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-131.78,-54.4569,-116.921,50,529396)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-44.1984,-65.7145,-187.547,-64,529401)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,-44.1984,-65.7145,-187.547,-64,529401)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,11.854,-67.5812,-67.0546,-172,529393)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,47.0314,-67.1858,-69.0794,-167,529400)
	spawnMobile("dantooine", "kunga_tribe_member_poi",900,41.8303,-67.2095,-66.8746,140,529400)

	spawnMobile("dantooine", "kunga_shaman_poi",900,-101.538,-54.7652,-87.0038,-67,529384)
	spawnMobile("dantooine", "kunga_shaman_poi",900,-43.5051,-66.4098,-180.748,-127,529401)

	spawnMobile("dantooine", "kunga_scout_poi",900,-114.016,-55.0663,-89.3493,57,529384)
	spawnMobile("dantooine", "kunga_scout_poi",900,-29.593,-37.8459,-77.5294,15,529394)

	spawnMobile("dantooine", "kunga_harvester_poi",900,3.8129,-71.8589,-111.954,-37,529399)
	spawnMobile("dantooine", "kunga_harvester_poi",900,33.6734,-66.416,-81.1892,-50,529400)

	spawnMobile("dantooine", "kunga_soothsayer_poi",900,-133.174,-53.8469,-85.6844,60,529384)
	spawnMobile("dantooine", "kunga_soothsayer_poi",900,-64.3797,-43.6055,-10.1993,-131,529377)
	spawnMobile("dantooine", "kunga_soothsayer_poi",900,49.019,-65.7021,-86.3147,-62,529400)

	spawnMobile("dantooine", "kunga_rockshaper_poi",900,-69.9479,-47.0176,-71.9337,-71,529378)

	spawnMobile("dantooine", "kunga_loreweaver_poi",900,-54.8802,-50.0575,-102.355,78,529395)
	spawnMobile("dantooine", "kunga_loreweaver_poi",900,7.20555,-70.2792,-100.046,-125,529399)
	spawnMobile("dantooine", "kunga_loreweaver_poi",900,37.4178,-66.891,-78.752,-54,529400)

	spawnMobile("dantooine", "kunga_clan_primalist_poi",900,-54.6997,-66.1097,-237.257,-20,529402)

	spawnMobile("dantooine", "kunga_clan_leader_poi",1800,36.1598,-69.2762,-108.251,-6,529400)
end
