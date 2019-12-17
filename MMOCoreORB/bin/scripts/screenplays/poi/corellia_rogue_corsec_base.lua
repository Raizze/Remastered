CorsecBaseScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "CorsecBaseScreenPlay",

	lootContainers = {
		6575944,
		6575945
	
	},

	lootLevel = 90,	

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 1300000},
				{group = "rogue_corsec_base_common", chance = 1400000},
				{group = "rogue_corsec_base_rare", chance = 100000},
				{group = "rifles", chance = 1400000},
				{group = "pistols", chance = 1400000},
				{group = "generic_tech", chance = 1400000},
				{group = "generic_consoles", chance = 1400000},
				{group = "misc_decoloot_schemes", chance = 1400000},
				{group = "clothing_attachments", chance = 100000},
				{group = "armor_attachments", chance = 100000}
			},
			lootChance = 8000000
		}					
	},

	lootContainerRespawn = 1800 -- 30 minutes
}

registerScreenPlay("CorsecBaseScreenPlay", true)

function CorsecBaseScreenPlay:start()
	if (isZoneEnabled("corellia")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function CorsecBaseScreenPlay:spawnMobiles()
	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,4.5,-20.8,30.9,-93,1855730)
	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,-0.9,-20.8,31.1,89,1855730)
	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,-7.1,-13.8,7.1,90,1855727)
	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,0.2,-13.8,7.9,-92,1855727)
	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,-4.1,0.2,1.8,-93,1855742)
	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,-10,0.2,5.8,137,1855742)
	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,5207,5,1515.2,76,0)
	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,5203,5,1515.7,-34,0)

	spawnMobile("corellia", "renegade_corsec_trooper_poi",600,5239.7,5,1532,169,0)
	spawnMobile("corellia", "renegade_corsec_trooper_poi",600,5242.2,5,1534.8,104,0)
	spawnMobile("corellia", "renegade_corsec_trooper_poi",600,-7.1,0.2,5.9,114,1855738)
	spawnMobile("corellia", "renegade_corsec_trooper_poi",600,2.5,0.2,-1.4,-50,1855738)
	spawnMobile("corellia", "renegade_corsec_trooper_poi",600,10.6,0.2,1.3,1,1855738)
	spawnMobile("corellia", "renegade_corsec_trooper_poi",600,11.2,0.2,5.3,-171,1855738)
	spawnMobile("corellia", "renegade_corsec_trooper_poi",600,1.6,-20.8,18.9,0,1855730)

	spawnMobile("corellia", "corsec_deserter_poi",600,6.8,0.2,7.4,94,1855746)
	spawnMobile("corellia", "corsec_deserter_poi",600,-11.3,0.2,-5.7,-179,1855746)
	spawnMobile("corellia", "corsec_deserter_poi",600,-10.1,0.2,-1.3,95,1855742)
	spawnMobile("corellia", "corsec_deserter_poi",600,5224.9,5,1612.7,38,0)
	spawnMobile("corellia", "corsec_deserter_poi",600,5226.9,5,1616.6,-159,0)
	spawnMobile("corellia", "corsec_deserter_poi",600,5229.2,5,1613.3,-85,0)
	spawnMobile("corellia", "corsec_deserter_poi",600,-3.7,0.3,-3.7,4,1855722)

	spawnMobile("corellia", "corsec_traitor_poi",600,5221.2,5,1583.5,156,0)
	spawnMobile("corellia", "corsec_traitor_poi",600,5214.8,5,1588,-70,0)
	spawnMobile("corellia", "corsec_traitor_poi",600,-4.6,-10.3,-5.3,4,1855725)
	spawnMobile("corellia", "corsec_traitor_poi",600,-8.9,0.2,-5.8,-90,1855746)
	spawnMobile("corellia", "corsec_traitor_poi",600,11.1,0.2,6.8,-89,1855746)

	--Rem Custom
	spawnMobile("corellia", "corsec_traitor_poi",600,5271.16,5,1594.51,97,0)
	spawnMobile("corellia", "corsec_deserter_poi",600,5276.91,5,1586.19,18,0)
	spawnMobile("corellia", "renegade_corsec_trooper_poi",600,5279.41,5,1597.35,-150,0)

	spawnMobile("corellia", "corsec_deserter_poi",600,5288.85,5,1574.09,11,0)
	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,5285.66,5,1576.5,66,0)
	spawnMobile("corellia", "renegade_corsec_trooper_poi",600,5289.39,5,1606,-168,0)

	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,14.8404,0.184067,-8.78245,15,1855742)
	spawnMobile("corellia", "corsec_deserter_poi",600,-4.1,0.2,1.8,169,1855742)

	spawnMobile("corellia", "corsec_traitor_poi",600,16.1641,0.184067,-7.37954,-135,1855746)
	spawnMobile("corellia", "rogue_corsec_trooper_poi",600,6.36711,0.184067,-7.97075,41,1855746)

	spawnMobile("corellia", "rogue_corsec_leader_poi",1800,1.54788,-20.75,35.013,53,1855730)

end
