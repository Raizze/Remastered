HuttHideoutScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	
	screenplayName = "HuttHideoutScreenPlay",
	
	lootContainers = {
		134411,
		8496263,
		8496262,
		8496261,
		8496260
	},
	
	lootLevel = 80,	

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 200000},
				{group = "generic_tech", chance = 7600000},
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

registerScreenPlay("HuttHideoutScreenPlay", true)

function HuttHideoutScreenPlay:start()
	if (isZoneEnabled("tatooine")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function HuttHideoutScreenPlay:spawnMobiles()
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, -3.5, -12.7, -6.7, 24, 4235585)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 1.1, -14.4, -9.3, 15, 4235585)
	
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, -12.1, -32.2, -34, 19, 4235586)
	
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, -10.5, -40.4, -81.3, -178, 4235587)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 5.8, -40.9, -79.6, -37, 4235587)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, 14.5, -40.5, -74.2, -131, 4235587)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, 20, -39.6, -77.9, -50, 4235587)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 10.7, -41.1, -60.3, -124, 4235587)
	
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 47, -46.7, -50.8, -163, 4235588)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 50.4, -46.8, -58.6, -19, 4235588)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 51.6, -46, -91.6, -126, 4235588)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, 47.1, -46.2, -96.3, 46, 4235588)
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, 44.9, -46.2, -102.8, -41, 4235588)
	
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 13.9, -45, -121.1, 30, 4235589)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, 1.5, -45, -141.6, 117, 4235589)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -10, -45.6, -148, 26, 4235589)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -12.4, -45, -130.8, 125, 4235589)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 58.8, -47.1, -124.6, -21, 4235589)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 73.5, -52.9, -144.7, -178, 4235589)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, 72.5, -54.4, -151.6, -20, 4235589)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, 38.2, -55.7, -155.4, -78, 4235589)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 36.9, -56.1, -157.2, -53, 4235589)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 67.5, -57.3, -176.7, 62, 4235589)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, 58.6, -57.7, -185.3, -70, 4235589)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, 53, -57, -185.3, 59, 4235589)
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, 58.8, -56.4, -159.5, -60, 4235589)
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, 53.3, -56.6, -160.2, 45, 4235589)
	
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, 6, -63.9, -181.8, 90, 4235590)
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, -8.1, -65.1, -201.3, -10, 4235590)
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, -37.5, -67, -182.8, 91, 4235590)
	
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -18.7, -65.5, -210.3, -152, 4235591)
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, -22.5, -64.6, -220.2, -131, 4235591)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -17.6, -65.4, -216.8, -7, 4235591)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -4.8, -64.2, -231.5, 178, 4235591)
	spawnMobile("tatooine", "jabba_assassin_hideout", 900, -1.3, -64.2, -238.5, 88, 4235591)
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, -22.4, -65, -249.8, -174, 4235591)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -19.3, -62.6, -261.6, 43, 4235591)
	spawnMobile("tatooine", "jabba_assassin_hideout", 900, -10.6, -63.3, -261.2, -77, 4235591)
	
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -57.1, -70.2, -193, -70, 4235592)
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, -71.8, -68.6, -182.3, 99, 4235592)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -59.3, -69.8, -170.9, -53, 4235592)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, -71.5, -70, -166.7, 141, 4235592)
	spawnMobile("tatooine", "jabba_assassin_hideout", 900, -98.3, -72.4, -174.9, 72, 4235592)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -112.2, -69.1, -119.7, 84, 4235592)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, -106.1, -68.6, -112.2, -76, 4235592)
	spawnMobile("tatooine", "jabba_assassin_hideout", 900, -84.2, -70.3, -129.7, 83, 4235592)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, -94.9, -102.6, -137.2, 154, 4235592)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, -95.6, -102.1, -140.6, 0, 4235592)
	
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -51.4, -68.9, -95.4, 135, 4235593)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, -47.6, -69.3, -95.4, -133, 4235593)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, -46.3, -69.3, -99, -52, 4235593)
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, -59.4, -70.1, -88, -179, 4235593)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -69.4, -68.5, -101.7, 110, 4235593)
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, -65.6, -68.3, -103.1, -74, 4235593)
	spawnMobile("tatooine", "jabba_assassin_hideout", 900, -8.6, -68.6, -97.1, -162, 4235593)
	
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, -32.1, -80.2, -143.5, 80, 4235594)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -19.7, -79.8, -146.9, -59, 4235594)
	spawnMobile("tatooine", "jabba_henchman_hideout", 900, -21.2, -79.6, -143.8, 160, 4235594)
	
	spawnMobile("tatooine", "jabba_compound_guard_hideout", 900, -78.6, -100.8, -125.9, -124, 4235595)
	spawnMobile("tatooine", "jabba_assassin_hideout", 900, -83.8, -100.6, -106.6, -1, 4235595)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, -86.4, -100.5, -103.6, 123, 4235595)
	spawnMobile("tatooine", "jabba_assassin_hideout", 900, -100.4, -99.9, -114.2, 162, 4235595)
	spawnMobile("tatooine", "jabba_enforcer_hideout", 900, -98.3, -100, -105.2, -43, 4235595)

-- Rem Custom
	spawnMobile("tatooine", "jabba_lieutenant_hideout", 1800, -90.9216, -101.06, -102.819, 162, 4235595)
end
