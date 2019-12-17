ExarKunScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "ExarKunScreenPlay",
}

registerScreenPlay("ExarKunScreenPlay", true)

function ExarKunScreenPlay:start()
	if (isZoneEnabled("yavin4")) then
		self:spawnMobiles()
	end
end

function ExarKunScreenPlay:spawnMobiles()  

	spawnMobile("yavin4", "untrained_wielder_of_the_dark_side_cave",900,-10.42,0,13.4406,-89,3465382)
	spawnMobile("yavin4", "untrained_wielder_of_the_dark_side_cave",900,-10.42,0,10.8356,-89,3465382)
	spawnMobile("yavin4", "untrained_wielder_of_the_dark_side_cave",900,10.42,0,13.4406,85,3465382)
	spawnMobile("yavin4", "untrained_wielder_of_the_dark_side_cave",900,10.42,0,10.8356,85,3465382)

	spawnMobile("yavin4", "force_sensitive_crypt_crawler_cave",900,-0.0457492,0,8.65471,358,3465383)
	spawnMobile("yavin4", "force_sensitive_crypt_crawler_cave",900,5.4581,0,-6.92544,-71,3465383)
	spawnMobile("yavin4", "force_sensitive_crypt_crawler_cave",900,-6.2216,0,-6.94186,52,3465383)
	spawnMobile("yavin4", "force_crystal_hunter_cave",900,5.44016,0,6.75294,180,3465383)
	spawnMobile("yavin4", "force_crystal_hunter_cave",900,-7.323,0,7.24759,42,3465383)

	spawnMobile("yavin4", "untrained_wielder_of_the_dark_side_cave",900,-4.89295,0,-12.7573,-51,3465384)
	spawnMobile("yavin4", "untrained_wielder_of_the_dark_side_cave",900,5.18052,0,-12.4907,50,3465384)
	spawnMobile("yavin4", "force_sensitive_crypt_crawler_cave",900,11.7952,0,-12.658,-40,3465384)
	spawnMobile("yavin4", "force_sensitive_crypt_crawler_cave",900,-11.6316,0,-12.2601,35,3465384)
	spawnMobile("yavin4", "force_crystal_hunter_cave",900,10.122,0,-5.86071,21,3465384)

	spawnMobile("yavin4", "force_sensitive_crypt_crawler_cave",900,-20.48782,0,-1.30687,70,3465385)

	spawnMobile("yavin4", "untrained_wielder_of_the_dark_side_cave",900,-21.2366,0,-21.9548,22,3465387)

	spawnMobile("yavin4", "force_crystal_hunter_cave",900,-6.86547,0,-20.62,-66,3465388)
	spawnMobile("yavin4", "force_crystal_hunter_cave",900,6.1869,0,-20.699,180,3465388)
	spawnMobile("yavin4", "force_sensitive_crypt_crawler_cave",900,4.80846,0,-25.555,-51,3465388)

	spawnMobile("yavin4", "untrained_wielder_of_the_dark_side_cave",900,-13.9168,-2.0004,-43.9195,52,3465389)
	spawnMobile("yavin4", "force_sensitive_crypt_crawler_cave",900,-14.1713,-4.00009,-35.4262,56,3465389)

	spawnMobile("yavin4", "force_crystal_hunter_cave",900,4.91368,-5.99997,-36.0552,-25,3465390)
	spawnMobile("yavin4", "force_crystal_hunter_cave",900,-12.1483,-6.0007,-25.4968,21,3465390)

	spawnMobile("yavin4", "force_crystal_hunter_cave",900,20.2023,-6.00005,-19.7205,-89,3465391)
	spawnMobile("yavin4", "untrained_wielder_of_the_dark_side_cave",900,24.97,-6.00011,-9.39263,24,3465391)

	spawnMobile("yavin4", "untrained_wielder_of_the_dark_side_cave",900,-24.7989,-6.00012,-10.8835,16,3465392)

	spawnMobile("yavin4", "force_crystal_protector_cave",1800,-5.94908,-6.42366,-4.98765,180,3465393)

	spawnMobile("yavin4", "force_crystal_protector_cave",1800,7.17283,-6.42366,-5.0091,180,3465394)


end
