TalusAakuanCaveScreenPlay = ScreenPlay:new {
       numberOfActs = 1, 

	screenplayName = "TalusAakuanCaveScreenPlay",

	lootContainers = {
		6075899,
		6075900,
		6075901,
		6075902,
		6075903
        },
        
        lootLevel = 80, 
 
        lootGroups = {
                {
                        groups = {
                                {group = "generic_tech", chance = 6350000},
                                {group = "aakuan_common", chance = 3000000},
                                {group = "clothing_attachments", chance = 300000},
                                {group = "armor_attachments", chance = 300000},
				{group = "rem_named_crystals", chance = 50000}
                        },
                        lootChance = 8000000
                }                                       
        },
        
        lootContainerRespawn = 1800
}
 
registerScreenPlay("TalusAakuanCaveScreenPlay", true)
 
function TalusAakuanCaveScreenPlay:start()
	if (isZoneEnabled("talus")) then
                self:spawnMobiles()
                self:initializeLootContainers()
        end
end

function TalusAakuanCaveScreenPlay:spawnMobiles()    
       spawnMobile("talus", "aakuan_follower_poi", 900, 5932.6, 39.2, 4646.6, -73, 0)
       spawnMobile("talus", "aakuan_follower_poi", 900, 5926.5, 40.0, 4647.9, 89, 0)
       spawnMobile("talus", "aakuan_steward_poi", 900, 5928.6, 40.6, 4650.5, -164, 0)
       spawnMobile("talus", "aakuan_sentinel_poi", 900, 24.6, -28.6, -11.5, -50, 4255652)
       spawnMobile("talus", "aakuan_keeper_poi", 900, 24.6, -27.4, -7.5, -128, 4255652)
       spawnMobile("talus", "aakuan_sentinel_poi", 900, 21.9, -41.5, -70.6, 39, 4255653)
       spawnMobile("talus", "aakuan_keeper_poi", 900, 23.1, -42.3, -64.7, -167, 4255653)
       spawnMobile("talus", "aakuan_keeper_poi", 900, 26.0, -42.9, -69.1, -100, 4255653)
       spawnMobile("talus", "aakuan_sentinel_poi", 900, 54.7, -48.6, -58.7, 124, 4255653)
       spawnMobile("talus", "aakuan_follower_poi", 900, 51.1, -49.0, -54.8, 164, 4255653)
       spawnMobile("talus", "aakuan_follower_poi", 900, 49.4, -48.6, -59.1, 69, 4255653)
       spawnMobile("talus", "aakuan_follower_poi", 900, 48.8, -47.6, -71.5, -11, 4255653)
       spawnMobile("talus", "aakuan_follower_poi", 900, 54.7, -47.3, -69.8, -43, 4255653)
       spawnMobile("talus", "aakuan_guardian_poi", 900, 40.6, -46.2, -10.3, 128, 4255653)
       spawnMobile("talus", "aakuan_guardian_poi", 900, 46.8, -46.8, -5.2, -175, 4255653)
       spawnMobile("talus", "aakuan_follower_poi", 900, 42.6, -46.7, -7.0, 142, 4255653)
       spawnMobile("talus", "aakuan_anarchist_poi", 900, 56.8, -68.5, -38.2, 82, 4255653)
       spawnMobile("talus", "aakuan_steward_poi", 900, 95.9, -46.4, -121.1, 171, 4255656)
       spawnMobile("talus", "aakuan_steward_poi", 900, 90.3, -46.0, -120.6, 165, 4255656)
       spawnMobile("talus", "aakuan_warder_poi", 900, 88.9, -46.6, -109.7, -87, 4255656)
       spawnMobile("talus", "aakuan_warder_poi", 900, 81.0, -77.4, -93.4, -72, 4255656)
       spawnMobile("talus", "aakuan_spice_guard_poi", 900, 89.2, -61.2, -8.5, 42, 4255654)
       spawnMobile("talus", "aakuan_steward_poi", 900, 77.1, -60.9, -7.6, 82, 4255654)
       spawnMobile("talus", "aakuan_steward_poi", 900, 89.8, -66.9, -38.0, -11, 4255654)
       spawnMobile("talus", "aakuan_defender_poi", 900, 89.2, -76.3, -58.7, -34, 4255655)
       spawnMobile("talus", "aakuan_steward_poi", 900, 96.4, -75.4, -64.2, 85, 4255655)
       spawnMobile("talus", "aakuan_defender_poi", 900, 88.5, -76.6, -70.6, -34, 4255655)
       spawnMobile("talus", "aakuan_guardian_poi", 900, 56.9, -70.0, -121.8, -10, 4255657)
       spawnMobile("talus", "aakuan_warder_poi", 900, 86.8, -66.9, -136.6, -113, 4255658)
       spawnMobile("talus", "aakuan_sentinel_poi", 900, 83.9, -66.1, -141.8, -143, 4255658)
       spawnMobile("talus", "aakuan_guardian_poi", 900, 116.3, -66.8, -91.1, -160, 4255659)
       spawnMobile("talus", "aakuan_spice_guard_poi", 900, 110.8, -66.7, -92.4, -94, 4255659)
       spawnMobile("talus", "aakuan_warder_poi", 900, 129.2, -66.7, -109.2, -87, 4255659)
       spawnMobile("talus", "aakuan_spice_guard_poi", 900, 144.9, -66.2, -86.5, -125, 4255659)
       spawnMobile("talus", "aakuan_spice_guard_poi", 900, 139.6, -66.7, -86.5, -156, 4255659)
       spawnMobile("talus", "aakuan_anarchist_poi", 900, 153.7, -65.9, -129.6, -47, 4255659)
       spawnMobile("talus", "aakuan_champion_poi", 900, 189.3, -66.1, -105.5, -72, 4255660)
       spawnMobile("talus", "aakuan_assassin_poi", 900, 190.0, -66.3, -97.9, -93, 4255660)
       spawnMobile("talus", "aakuan_warder_poi", 900, 165.0, -66.7, -98.0, -96, 4255660)

	--Rem Specific Mobiles
       spawnMobile("talus", "aakuan_defender_poi", 900, 84.6, -46.9, -107.5, -102, 4255656)
       spawnMobile("talus", "aakuan_steward_poi", 900, 53.8, -49.1, -19.0, -149, 4255653)
       spawnMobile("talus", "aakuan_sentinel_poi", 900, 58.6, -50.7, -16.8, -144, 4255653)
       spawnMobile("talus", "aakuan_guardian_poi", 900, 86.4, -66.9, -36.7, -22, 4255654)
       spawnMobile("talus", "aakuan_keeper_poi", 900, 57.3, -68.5, -42.6, 64, 4255653)
       spawnMobile("talus", "aakuan_defender_poi", 900, 76.1, -70.1, -42.7, 13, 4255654)
       spawnMobile("talus", "aakuan_anarchist_poi", 900, 58.0, -76.7, -86.9, -131, 4255657)
       spawnMobile("talus", "aakuan_spice_guard_poi", 900, 99.3, -66.2, -104.6, -165, 4255656)
       spawnMobile("talus", "aakuan_spice_guard_poi", 900, 100.1, -65.5, -110.6, -119, 4255656)
       spawnMobile("talus", "aakuan_defender_poi", 900, 128.0, -66.6, -102.1, 143, 4255659)
       spawnMobile("talus", "aakuan_warder_poi", 900, 136.6, -66.2, -103.6, -36, 4255659)
       spawnMobile("talus", "aakuan_anarchist_poi", 900, 151.6, -66.1, -130.8, -19, 4255659)
       spawnMobile("talus", "aakuan_anarchist_poi", 900, 155.2, -65.5, -127.9, -71, 4255659)
       spawnMobile("talus", "aakuan_keeper_poi", 900, 158.8, -66.8, -95.5, -104, 4255660)
       spawnMobile("talus", "aakuan_keeper_poi", 900, 158.4, -67.0, -100.0, -92, 4255660)
       spawnMobile("talus", "aakuan_spice_guard_poi", 900, 184.9, -65.6, -108.6, -60, 4255660)
end
