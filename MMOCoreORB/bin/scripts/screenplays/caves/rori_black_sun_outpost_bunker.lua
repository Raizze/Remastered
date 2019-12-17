RoriBlackSunOutpostBunkerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	--location 4851 -1080 (part 2 of 'Secrets of the Syren' questline)
	screenplayName = "RoriBlackSunOutpostBunkerScreenPlay",

}

registerScreenPlay("RoriBlackSunOutpostBunkerScreenPlay", true)

function RoriBlackSunOutpostBunkerScreenPlay:start()
	if (isZoneEnabled("rori")) then
		self:spawnMobiles()
		self:spawnSceneObjects()
	end
end

function RoriBlackSunOutpostBunkerScreenPlay:spawnSceneObjects()
	spawnSceneObject("rori", "object/tangible/terminal/terminal_elevator_down.iff", -8.45573, -12, 58.9934, 3566207, 0.707107, 0, 0.707107, 0)
	spawnSceneObject("rori", "object/tangible/terminal/terminal_elevator_up.iff", -8.45573, -20, 58.9934, 3566207, 0.707107, 0, 0.707107, 0)
	spawnSceneObject("rori", "object/tangible/terminal/terminal_elevator_down.iff", 75.4, -20, 58.9743, 3566250, 0.707107, 0, -0.707107, 0)
	spawnSceneObject("rori", "object/tangible/terminal/terminal_elevator_up.iff", 75.3996, -50, 59.009, 3566250, 0.707107, 0, -0.707107, 0)
end

function RoriBlackSunOutpostBunkerScreenPlay:spawnMobiles()

	--outside
	spawnMobile("rori", "black_sun_initiate_poi", 300, 4838.6, 76.1, -1084.6, -130, 0)
	spawnMobile("rori", "black_sun_initiate_poi", 300, 4842.2, 76.2, -1090.2, -130, 0)

	--inside
	spawnMobile("rori", "black_sun_smuggler_poi", 600, 0.0, 0.3, 2.6, 177, 3566198)
	spawnMobile("rori", "black_sun_initiate_poi", 600, -3.7, 0.3, -4.5, -2, 3566198)
	--spawnMobile("rori", "black_sun_initiate_poi", 600, -3.23658, 0.25, -3.89382, -91, 3566199)
	spawnMobile("rori", "black_sun_minion_poi", 600, 19.0, -12.0, 28.7, -94, 3566202)
	spawnMobile("rori", "black_sun_smuggler_poi", 600, 22.9, -12.0, 35.9, -16, 3566202)
	--spawnMobile("rori", "black_sun_initiate_poi", 600, 6.05448, -12.0, 58.9656, -101, 3566206)
	spawnMobile("rori", "black_sun_smuggler_poi", 600, -3.5, -12.0, 75.6, -101, 3566206)
	spawnMobile("rori", "black_sun_minion_poi", 600, 3.6, -12.0, 79.3, 178, 3566206)
	spawnMobile("rori", "black_sun_initiate_poi", 600, 34.7, -12.0, 73.7, -47, 3566213)
	spawnMobile("rori", "black_sun_initiate_poi", 600, 33.5, -20.0, 111.7, 175, 3566214)
	spawnMobile("rori", "black_sun_smuggler_poi", 600, 45.8, -20.0, 112.5, 173, 3566215)
	spawnMobile("rori", "black_sun_smuggler_poi", 600, 46.0, -20.0, 108.6, -4, 3566215)
	spawnMobile("rori", "black_sun_minion_poi", 600, 50.9, -20.0, 106.6, -52, 3566215)
	spawnMobile("rori", "black_sun_minion_poi", 600, 50.7, -20.0, 115.1, -132, 3566215)
	spawnMobile("rori", "black_sun_minion_poi", 600, 47.6, -20.0, 126.3, 179, 3566234)
	spawnMobile("rori", "black_sun_smuggler_poi", 600, 48.8, -20.0, 133.4, -94, 3566235)
	spawnMobile("rori", "black_sun_initiate_poi", 600, 55.7, -20.0, 135.1, -100, 3566235)
	spawnMobile("rori", "black_sun_initiate_poi", 600, 39.3, -20.0, 135.1, 82, 3566235)
	spawnMobile("rori", "black_sun_minion_poi", 600, 47.8, -20.0, 146.2, -179, 3566235)
	spawnMobile("rori", "black_sun_smuggler_poi", 600, 47.6, -20.0, 151.4, 177, 3566235)
	spawnMobile("rori", "insane_miner_poi", 600, 105.7, -20.0, 110.6, 85, 3566240)
	spawnMobile("rori", "black_sun_minion_poi", 600, 44.3, -20.0, 150.0, -94, 3566235)
	--medical area where the quest npc (Tover Blackmoor) stands
	spawnMobile("rori", "technician", 600, 44.6, -12.0, 157.6, -9, 3566235)
	--elevator shaft closet without any button to go down
	spawnMobile("rori", "blood_thirsty_borgle", 600, -7.3, -12.0, 59.0, 79, 3566207)

	--Rem Custom
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 13.4932, -12.0, 59.4977, 104, 3566204)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 99.7939, -20.0, 154.127, -50, 3566238)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 104.255, -20.0, 135.811, -108, 3566239)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 94.9244, -20.0, 131.522, 132, 3566239)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 62.4957, -20.0, 106.212, 65, 3566241)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 96.9777, -20.0, 104.545, -14, 3566240) 
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 103.587, -20.0, 116.857, 60, 3566240)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, -6.64116, -12.0, 100.513, -23, 3566212)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 17.177, -12.0, 92.7228, 155, 3566210)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 1.51224, -12.0, 119.143, -37, 3566211)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 3.22705, -12.0, 108.811, 154, 3566211)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 35.813, -12.0, 63.4176, -151, 3566205)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 8.03312, -12.0, 52.5265, 168, 3566206)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, -2.48867, -20.0, 118.244, 105, 3566245)
	spawnMobile("rori", "black_sun_smuggler_poi", 1800, 22.0819, -50.0, 88.3121, 10, 3566257)
	spawnMobile("rori", "black_sun_smuggler_poi", 1800, 5.72999, -50.0, 53.8247, 55, 3566257)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 45.3387, -50.0, 30.4107, -161, 3566255)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 64.4147, -50.0, 55.7173, 144, 3566251)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 64.3361, -50.0, 53.1144, 0, 3566251)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 61.038, -20.0, 56.1913, 58, 3566249)
	spawnMobile("rori", "black_sun_smuggler_poi", 900, 63.3546, -20.0, 17.7775, -32, 3566248)

	spawnMobile("rori", "black_sun_initiate_poi", 900, 104.028, -20.0, 145.662, -60, 3566238)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 99.8697, -20.0, 126.031, -99, 3566239)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 64.382, -20.0, 128.697, 173, 3566242)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 68.7751, -20.0, 128.947, 174, 3566242)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 72.658, -20.0, 129.405, 166, 3566242)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 64.5016, -20.0, 133.097, -3, 3566242)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 68.3191, -20.0, 133.209, -9, 3566242)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 72.6229, -20.0, 133.17, -17, 3566242)
	spawnMobile("rori", "black_sun_initiate_poi", 900, -13.8842, -12.0, 104.679, 120, 3566212)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 6.98202, -12.0, 113.374, -104, 3566211)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 1.11908, -20, 54.5963, 10, 3566243)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 4.49687, -20.0, 58.3581, -94, 3566243)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 0.462157, -20.0, 118.439, -98, 3566245)
	spawnMobile("rori", "black_sun_initiate_poi", 1800, 21.9248, -50.0, 90.3255, 130, 3566257)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 65.7254, -50.0, 35.8511, 16, 3566251)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 60.6163, -50.0, 35.9911, -20, 3566251)
	spawnMobile("rori", "black_sun_initiate_poi", 900, 67.7086, -20.0, 63.8158, -133, 3566249)

	spawnMobile("rori", "black_sun_minion_poi", 900, 4.19681, -12, 64.2051, -2, 3566206)
	spawnMobile("rori", "black_sun_minion_poi", 900, -2.5985, -12, 53.6131, -149, 3566206)
	spawnMobile("rori", "black_sun_minion_poi", 900, 97.9394, -20.0, 148.194, 124, 3566238)
	spawnMobile("rori", "black_sun_minion_poi", 900, 83.698, -20.0, 143.215, 0, 3566237)
	spawnMobile("rori", "black_sun_minion_poi", 900, 65.9189, -20.0, 117.34, 101, 3566241)
	spawnMobile("rori", "black_sun_minion_poi", 900, 73.4479, -20.0, 107.603, 34, 3566241)
	spawnMobile("rori", "black_sun_minion_poi", 900, 17.8222, -12.0, 105.31, -29, 3566210)
	spawnMobile("rori", "black_sun_minion_poi", 900, -3.31022, -12.0, 113.09, 111, 3566211)
	spawnMobile("rori", "black_sun_minion_poi", 900, 33.4699, -12.0, 58.7844, 81, 3566205)
	spawnMobile("rori", "black_sun_minion_poi", 900, 48.3807, -12.0, 55.4171, -34, 3566205)
	spawnMobile("rori", "black_sun_minion_poi", 900, 2.35589, -20.0, 62.5846, -131, 3566243)
	spawnMobile("rori", "black_sun_minion_poi", 900, 19.4315, -20.0, 109.271, -59, 3566245)
	spawnMobile("rori", "black_sun_minion_poi", 900, -18.6219, -20.0, 103.693, 43, 3566245)
	spawnMobile("rori", "black_sun_minion_poi", 900, -15.1961, -20.0, 103.462, -41, 3566245)
	spawnMobile("rori", "black_sun_minion_poi", 1800, 24.4749, -50.0, 89.4649, -91, 3566257)
	spawnMobile("rori", "black_sun_minion_poi", 1800, 8.30065, -50.0, 56.3109, 179, 3566257)
	spawnMobile("rori", "black_sun_minion_poi", 900, 24.4902, -50.0, 20.9798, 74, 3566255)
	spawnMobile("rori", "black_sun_minion_poi", 900, 61.7756, -20.0, 58.7491, -169, 3566249)
	spawnMobile("rori", "black_sun_minion_poi", 900, 47.3547, -20.0, 36.2029, 118, 3566248)
	spawnMobile("rori", "black_sun_minion_poi", 900, 49.143, -20.0, 15.1637, 34, 3566248)

	spawnMobile("rori", "black_sun_assassin_poi", 900, -5.75847, -12.0, 94.3104, -38, 3566212)
	spawnMobile("rori", "black_sun_assassin_poi", 900, 38.882, -50.0, -7.26541, 51, 3566254)
	spawnMobile("rori", "black_sun_assassin_poi", 900, 39.235, -50.0, 0.961139, 133, 3566254)
	spawnMobile("rori", "black_sun_assassin_poi", 900, 67.6673, -20.0, 28.5774, -85, 3566248)

	spawnMobile("rori", "black_sun_bloodguard_poi", 900, 3.55535, -12.0, 98.0981, 176, 3566209)
	spawnMobile("rori", "black_sun_bloodguard_poi", 900, 40.3021, -50.0, -0.965539, -28, 3566254)
	spawnMobile("rori", "black_sun_bloodguard_poi", 900, 64.1525, -20.0, 27.6896, 43, 3566248)
	spawnMobile("rori", "black_sun_bloodguard_poi", 900, 33.8872, -20.0, 58.5708, 85, 3566243)

	spawnMobile("rori", "black_sun_ghost_poi", 1800, 10.3542, -50.0, 87.4512, 145, 3566257)

	spawnMobile("rori", "black_sun_battle_droid", 900, 8.84802, -12.0, 79.608, -130, 3566206)
	spawnMobile("rori", "black_sun_battle_droid", 900, 11.6955, -20.0, 53.1615, -56, 3566243)
	spawnMobile("rori", "black_sun_battle_droid", 900, 14.7594, -20.0, 117.331, -118, 3566245)

	spawnMobile("rori", "black_sun_battle_droid", 900, 19.8999, -20.0, 44.4777, -53, 3566243)
	spawnMobile("rori", "black_sun_battle_droid", 900, 36.7167, -50.0, 25.6677, -85, 2566255)

	spawnMobile("rori", "death_watch_blastromech", 900, 20.1538, -20.0, 75.3115, -156, 3566243)
	spawnMobile("rori", "death_watch_blastromech", 900, -14.834, -20.0, 128.605, -121, 3566245)
	spawnMobile("rori", "death_watch_blastromech", 900, 60.5313, -50.0, 48.0343, 14, 3566251)
	spawnMobile("rori", "death_watch_blastromech", 900, 70.0128, -50.0, 63.6145, -107, 3566251)
	spawnMobile("rori", "death_watch_blastromech", 900, 58.7465, -20.0, 63.534, 125, 3566249)
	spawnMobile("rori", "death_watch_s_battle_droid_alt", 1800, 6.04165, -50.0, 73.262, 92, 3566257)
	

	--The Room Of Death
	spawnMobile("rori", "black_sun_initiate_poi_3", 900, -43.0671, -50.0, 69.1689, -54, 3566259)
	spawnMobile("rori", "black_sun_initiate_poi_3", 900, -68.6799, -50.0, 42.1605, -129, 3566259)
	spawnMobile("rori", "black_sun_initiate_poi_3", 900, -85.1255, -50.0, 72.7736, 17, 3566259)
	spawnMobile("rori", "black_sun_initiate_poi_3", 900, -97.7309, -50.0, 87.1213, -6, 3566259)
	spawnMobile("rori", "black_sun_initiate_poi_3", 900, -80.5544, -50.0, 26.7693, -148, 3566259)
	spawnMobile("rori", "black_sun_initiate_poi_3", 900, -93.5143, -50.0, 23.3599, -51, 3566259)
	spawnMobile("rori", "black_sun_initiate_poi_3", 900, -115.155, -50.0, 48.41, -47, 3566259)

	spawnMobile("rori", "black_sun_assassin_poi_3", 900, -31.0575, -50.0, 25.6509, -7, 3566259)
	spawnMobile("rori", "black_sun_assassin_poi_3", 900, -25.6229, -50.0, 64.1134, -132, 3566259)
	spawnMobile("rori", "black_sun_assassin_poi_3", 900, -71.4388, -50.0, 43.5887, 95, 3566259)
	spawnMobile("rori", "black_sun_assassin_poi_3", 900, -101.384, -50.0, 86.9519, -47, 3566259)
	spawnMobile("rori", "black_sun_assassin_poi_3", 900, -112.323, -50.0, 33.3584, -9, 3566259)
	spawnMobile("rori", "black_sun_assassin_poi_3", 900, -117.573, -50.0, 59.1944, -159, 3566259)

	spawnMobile("rori", "black_sun_smuggler_poi_3", 900, -31.5538, -50.0, 35.7619, -174, 3566259)
	spawnMobile("rori", "black_sun_smuggler_poi_3", 900, -38.2675, -50.0, 75.4, -103, 3566259)
	spawnMobile("rori", "black_sun_smuggler_poi_3", 900, -68.0027, -50.0, 65.7589, 164, 3566259)
	spawnMobile("rori", "death_watch_s_battle_droid_alt", 900, -74.0476, -50.0, 38.5287, 84, 3566259)
	spawnMobile("rori", "black_sun_smuggler_poi_3", 900, -77.3608, -50.0, 61.2497, -131, 3566259)
	spawnMobile("rori", "black_sun_smuggler_poi_3", 900, -101.413, -50.0, 76.6395, -118, 3566259)
	spawnMobile("rori", "black_sun_smuggler_poi_3", 900, -104.81, -50.0, 29.591, 170, 3566259)
	spawnMobile("rori", "black_sun_smuggler_poi_3", 900, -136.441, -50.0, 54.9792, 52, 3566259)

	spawnMobile("rori", "black_sun_bloodguard_poi_3", 900, -34.112, -50.0, 31.9278, 137, 3566259)
	spawnMobile("rori", "black_sun_bloodguard_poi_3", 900, -64.3945, -50.0, 60.7398, -16, 3566259)
	spawnMobile("rori", "black_sun_bloodguard_poi_3", 900, -85.8208, -50.0, 75.6021, 139, 3566259)
	spawnMobile("rori", "black_sun_bloodguard_poi_3", 900, -75.197, -50.0, 21.0702, -41, 3566259)
	spawnMobile("rori", "black_sun_bloodguard_poi_3", 900, -110.239, -50.0, 36.0891, -118, 3566259)
	spawnMobile("rori", "black_sun_bloodguard_poi_3", 900, -134.557, -50.0, 64.3452, 150, 3566259)

	spawnMobile("rori", "black_sun_guard_poi_3", 900, -78.4112, -50.0, 82.1286, -126, 3566259)
	spawnMobile("rori", "black_sun_guard_poi_3", 900, -51.63, -50.0, 49.7117, 94, 3566259)
	spawnMobile("rori", "black_sun_guard_poi_3", 900, -68.131, -50.0, 89.7942, -173, 3566259)
	spawnMobile("rori", "black_sun_guard_poi_3", 900, -107.011, -50.0, 78.6083, 137, 3566259)
	spawnMobile("rori", "black_sun_guard_poi_3", 900, -91.5709, -50.0, 37.1784, 16, 3566259)
	spawnMobile("rori", "black_sun_guard_poi_3", 900, -130.884, -50.0, 27.1681, 164, 3566259)
	spawnMobile("rori", "black_sun_guard_poi_3", 900, -119.519, -50.0, 54.7733, 105, 3566259)

	spawnMobile("rori", "black_sun_minion_poi_3", 900, -49.3775, -50.0, 30.5755, -60, 3566259)
	spawnMobile("rori", "black_sun_minion_poi_3", 900, -54.1485, -50.0, 33.7983, 147, 3566259)
	spawnMobile("rori", "black_sun_minion_poi_3", 900, -44.6716, -50.0, 75.173, 116, 3566259)
	spawnMobile("rori", "black_sun_minion_poi_3", 900, -69.2578, -50.0, 37.2113, -30, 3566259)
	spawnMobile("rori", "death_watch_s_battle_droid_alt", 900, -99.8546, -50.0, 91.5676, -152, 3566259)
	spawnMobile("rori", "black_sun_minion_poi_3", 900, -90.2411, -50.0, 40.0975, -147, 3566259)
	spawnMobile("rori", "black_sun_minion_poi_3", 900, -132.337, -50.0, 23.149, -35, 3566259)
	spawnMobile("rori", "black_sun_minion_poi_3", 900, -129.282, -50.0, 23.705, -64, 3566259)

	spawnMobile("rori", "black_sun_ghost_poi_3", 900, -53.6753, -50.0, 19.9892, -42, 3566259)
	spawnMobile("rori", "black_sun_ghost_poi_3", 900, -105.929, -50.0, 71.8548, 62, 3566259)
	spawnMobile("rori", "black_sun_ghost_poi_3", 900, -112.581, -50.0, 50.0946, -50, 3566259)
	spawnMobile("rori", "black_sun_ghost_poi_3", 900, -49.885, -50.0, 32.9836, -167, 3566259)

	spawnMobile("rori", "black_sun_battle_droid", 900, -42.0029, -50.0, 83.4406, 145, 3566259)
	spawnMobile("rori", "death_watch_s_battle_droid_alt", 900, -124.382, -50.0, 72.4546, 118, 3566259)
	
	spawnMobile("rori", "black_sun_battle_droid", 900, -97.9993, -50.0, 51.6312, 51, 3566259)
	spawnMobile("rori", "death_watch_s_battle_droid_alt", 900, -26.5731, -50.0, 28.2821, -79, 3566259)

	spawnMobile("rori", "death_watch_blastromech", 900, -37.7004, -50.0, 52.9037, 26, 3566259)
	spawnMobile("rori", "death_watch_blastromech", 900, -64.3945, -50.0, 60.7398, 147, 3566259)
	spawnMobile("rori", "death_watch_blastromech", 900, -84.1306, -50.0, 66.1698, 68, 3566259)
	spawnMobile("rori", "death_watch_blastromech", 900, -97.0129, -50.0, 41.1168, 93, 3566259)
	spawnMobile("rori", "death_watch_blastromech", 900, -124.143, -50.0, 35.9011, 103, 3566259)

	--End Room 1
	spawnMobile("rori", "black_sun_overlord_poi_3", 10800, -26.9999, -50.0, -0.294498, -94, 3566262)
	spawnMobile("rori", "death_watch_blastromech", 300, -19.2151, -50.0, 5.598, -116, 3566262)
	spawnMobile("rori", "death_watch_blastromech", 300, -18.9341, -50.0, -5.54568, -75, 3566262)
	spawnMobile("rori", "death_watch_blastromech", 300, -39.1226, -50.0, 3.82416, 126, 3566262)
	spawnMobile("rori", "death_watch_blastromech", 300, -39.7038, -50.0, -5.29831, 48, 3566262)

	--End Room 2
	spawnMobile("rori", "black_sun_overlord_poi_3", 10800, -52.6088, -50.0, 116.999, -83, 3566263)
	spawnMobile("rori", "death_watch_blastromech", 300, -42.9957, -50.0, 122.398, -135, 3566263)
	spawnMobile("rori", "death_watch_blastromech", 300, -42.781, -50.0, 110.345, -55, 3566263)
	spawnMobile("rori", "death_watch_blastromech", 300, -68.6672, -50.0, 122.222, 117, 3566263)
	spawnMobile("rori", "death_watch_blastromech", 300, -68.6525, -50.0, 110.892, 43, 3566263)

end
