NabooPirateBunkerScreenPlay = ScreenPlay:new {
	numberOfActs = 1,
	--location -1482 -1729
	screenplayName = "NabooPirateBunkerScreenPlay",

 	lootContainers = {
		5535582,
		5535589,
		5535590,
		5535591,
		5535606,
		5535607,
		5535608,
		5535609,
		5535610,
		5535611
	},

	lootLevel = 80,

	lootGroups = {
		{
			groups = {
				{group = "color_crystals", chance = 1050000},
				{group = "junk", chance = 5000000},
				{group = "clothing_attachments", chance = 200000},
				{group = "armor_attachments", chance = 200000},
				{group = "pirate_bunker_common", chance = 1050000},
				{group = "misc_decoloot_schemes", chance = 950000},
				{group = "generic_consoles", chance = 750000},
				{group = "generic_tech", chance = 750000},
				{group = "rem_named_crystals", chance = 50000}
			},
			lootChance = 8000000
		}
	},

	lootContainerRespawn = 1800
}

registerScreenPlay("NabooPirateBunkerScreenPlay", true)

function NabooPirateBunkerScreenPlay:start()
	if (isZoneEnabled("naboo")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function NabooPirateBunkerScreenPlay:spawnMobiles()
	--add mobiles here

	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(25) + -1540.0, 278, getRandomNumber(30) + -1759.7, getRandomNumber(360) + 0, 0)
	spawnMobile("naboo", "naboo_gunrunner_bunker", 375, getRandomNumber(25) + -1540.0, 278, getRandomNumber(30) + -1759.7, getRandomNumber(360) + 0, 0)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(25) + -1540.0, 278, getRandomNumber(30) + -1759.7, getRandomNumber(360) + 0, 0)
	spawnMobile("naboo", "naboo_gunrunner_bunker", 375, getRandomNumber(25) + -1540.0, 278, getRandomNumber(30) + -1759.7, getRandomNumber(360) + 0, 0)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(25) + -1540.0, 278, getRandomNumber(30) + -1759.7, getRandomNumber(360) + 0, 0)
	spawnMobile("naboo", "naboo_gunrunner_bunker", 375, getRandomNumber(25) + -1540.0, 278, getRandomNumber(30) + -1759.7, getRandomNumber(360) + 0, 0)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(25) + -1540.0, 278, getRandomNumber(30) + -1759.7, getRandomNumber(360) + 0, 0)
	spawnMobile("naboo", "naboo_gunrunner_bunker", 375, getRandomNumber(25) + -1540.0, 278, getRandomNumber(30) + -1759.7, getRandomNumber(360) + 0, 0)

	spawnMobile("naboo", "naboo_pirate_cutthroat_bunker", 375, -1540.0, 278, -1759.7, 90, 0)
	spawnMobile("naboo", "naboo_pirate_cutthroat_bunker", 375, -1512.0, 278, -1726.8, -90, 0)
	spawnMobile("naboo", "naboo_pirate_crewman_bunker", 375, -1501.0, 278, -1713.2, 180, 0)
	spawnMobile("naboo", "naboo_pirate_crewman_bunker", 375, -1484.1, 278, -1712.3, 140, 0)
	spawnMobile("naboo", "naboo_pirate_crewman_bunker", 375, -1485.0, 278, -1740.4, 0, 0)
	spawnMobile("naboo", "naboo_pirate_crewman_bunker", 375, -1501.8, 278, -1743.8, 10, 0)

	spawnMobile("naboo", "naboo_pirate_cutthroat_bunker", 375, 0.0, 0.3, 3.5, 0, 5535565)
	spawnMobile("naboo", "naboo_pirate_cutthroat_bunker", 375, -3.7, 0.3, -0.8, 0, 5535565)
	spawnMobile("naboo", "naboo_pirate_cutthroat_bunker", 375, 3.5, 0.0, 1.0, 180, 5535573)

	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(8) + -1.3, -12.0, getRandomNumber(8) + 26.1, getRandomNumber(360) + 0, 5535567)
	spawnMobile("naboo", "naboo_pirate_crewman_bunker", 375, getRandomNumber(8) + -1.3, -12.0, getRandomNumber(8) + 26.1, getRandomNumber(360) + 0, 5535567)
	spawnMobile("naboo", "naboo_pirate_crewman_bunker", 375, getRandomNumber(8) + -1.3, -12.0, getRandomNumber(8) + 26.1, getRandomNumber(360) + 0, 5535567)
	spawnMobile("naboo", "naboo_pirate_cutthroat_bunker", 375, getRandomNumber(8) + -1.3, -12.0, getRandomNumber(8) + 26.1, getRandomNumber(360) + 0, 5535567)

	spawnMobile("naboo", "naboo_pirate_lieutenant_bunker", 375, 32.1, -12.0, 30.3, -90, 5535568)

	spawnMobile("naboo", "naboo_pirate_lieutenant_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_armsman_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_armsman_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_armsman_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_crewman_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_crewman_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_crewman_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_cutthroat_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_cutthroat_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_cutthroat_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_gunrunner_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_gunrunner_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(44) + 39.5, -16.0, getRandomNumber(24) + 58.4, getRandomNumber(360) + 0, 5535571)

	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(37) + -15.5, -16.0, getRandomNumber(10) + 72.5, getRandomNumber(360) + 0, 5535570)
	spawnMobile("naboo", "naboo_gunrunner_bunker", 375, getRandomNumber(37) + -15.5, -16.0, getRandomNumber(10) + 72.5, getRandomNumber(360) + 0, 5535570)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(37) + -15.5, -16.0, getRandomNumber(10) + 72.5, getRandomNumber(360) + 0, 5535570)
	spawnMobile("naboo", "naboo_gunrunner_bunker", 375, getRandomNumber(37) + -15.5, -16.0, getRandomNumber(10) + 72.5, getRandomNumber(360) + 0, 5535570)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, getRandomNumber(37) + -15.5, -16.0, getRandomNumber(10) + 72.5, getRandomNumber(360) + 0, 5535570)

	spawnMobile("naboo", "naboo_dread_pirate_bunker", 375, -37.2, -14, 78.8, 88, 5535572)

--Rem Custom
	spawnMobile("naboo", "naboo_pirate_bunker", 375, 29.295, -12.0, 30.3, getRandomNumber(360) + 0, 5535568)
	spawnMobile("naboo", "naboo_gunrunner_bunker", 375, 25.40, -12.0, 35.2434, getRandomNumber(360) + 0, 5535568)
	spawnMobile("naboo", "naboo_pirate_cutthroat_bunker", 375, 30.5596, -12.0, 35.1337, getRandomNumber(360) + 0, 5535568)
	spawnMobile("naboo", "naboo_pirate_crewman_bunker", 375, 35.956, -12.0, 34.3004, getRandomNumber(360) + 0, 5535568)
	spawnMobile("naboo", "naboo_pirate_armsman_bunker", 375, 33.0746, -12.0, 25.7481, getRandomNumber(360) + 0, 5535568)

	spawnMobile("naboo", "naboo_pirate_armsman_bunker", 375, -29.3504, -14, 72.9942, getRandomNumber(360) + 0, 5535572)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, -39.3443, -14, 72.1735, getRandomNumber(360) + 0, 5535572)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, -33.4604, -14, 83.6841, getRandomNumber(360) + 0, 5535572)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, -43.0497, -14, 80.7903, getRandomNumber(360) + 0, 5535572)
	spawnMobile("naboo", "naboo_pirate_bunker", 375, -40.6733, -14, 86.1292, getRandomNumber(360) + 0, 5535572)
	spawnMobile("naboo", "naboo_gunrunner_bunker", 375, -38.2622, -14, 76.8886, getRandomNumber(360) + 0, 5535572)
end
