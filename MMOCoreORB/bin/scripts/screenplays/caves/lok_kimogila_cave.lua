KimoCaveScreenPlay = ScreenPlay:new {
    numberOfActs = 1,

    screenplayName = "KimoCaveScreenPlay",
}

registerScreenPlay("KimoCaveScreenPlay", true)

function KimoCaveScreenPlay:start()
	if (isZoneEnabled("lok")) then
       		self:spawnMobiles()
	end
end

function KimoCaveScreenPlay:spawnMobiles()

	--Cave Entrance (4772 947)

        --Cell[7475355 ID 1]
        --Cell[7475356 ID 2]
	spawnMobile("lok", "kimogila_hatchling_cave",1800,1.76238,-11.3881,-17.311,-50,7475356)
        --Cell[7475357 ID 3]
	spawnMobile("lok", "kimogila_hatchling_cave",1800,-27.1,-38.2,-64.2,0,7475357)
        --Cell[7475358 ID 4]
	spawnMobile("lok", "kimogila_cave",1800,-26.6253,-52.201,-114.546,-65,7475358)
        --Cell[7475359 ID 5]
	spawnMobile("lok", "giant_kimogila_cave",1800,-29.9,-53.5,-190.9,59,7475359)
	spawnMobile("lok", "kimogila_cave",1800,-0.502598,-51.0862,-193.195,39,7475359)
	spawnMobile("lok", "dune_kimogila_cave",1800,-69.8947,-56.0768,-179.83,185,7475359)
        --Cell[7475360 ID 6]
	spawnMobile("lok", "kimogila_dwarf_cave",1800,43.9592,-57.2735,-187.854,-80,7475360)
        --Cell[7475361 ID 7]
	spawnMobile("lok", "kimogila_cave",1800,41.0134,-76.659,-242.581,12,7475361)
        --Cell[7475362 ID 8]
	spawnMobile("lok", "kimogila_hatchling_cave",1800,93.7925,-87.3575,-275.795,-33,7475362)
        --Cell[7475363 ID 9]
        --Cell[7475364 ID 10]
	spawnMobile("lok", "kimogila_cave",1800,12.9498,-58.2702,-258.701,10,7475364)
        --Cell[7475365 ID 11]
	spawnMobile("lok", "kimogila_dwarf_cave",1800,-22.0668,-74.341,-303.517,7,7475365)
        --Cell[7475366 ID 12]
	spawnMobile("lok", "enraged_kimogila_cave",1800,-82.86,-75.4414,-258.161,75,7475366)
        --Cell[7475367 ID 13]
	spawnMobile("lok", "kimogila_cave",1800,-104.674,-81.0608,-283.767,-37,7475367)
        --Cell[7475368 ID 14]
	spawnMobile("lok", "kimogila_hatchling_cave",1800,-78.1681,-88.2648,-300.42,13,7475368)
        --Cell[7475369 ID 15]
	spawnMobile("lok", "enraged_dune_kimogila_cave",7200,108.804,-90.5317,-328.036,87,7475369)
	spawnMobile("lok", "young_spined_snake_cave",720,128.516,-92.3975,-319.27,0,7475369)
        --Cell[7475370 ID 16]
	spawnMobile("lok", "kimogila_hatchling_cave",1800,-28.2,-78.7,-353.3,13,7475370)
	spawnMobile("lok", "giant_dune_kimogila_cave",7200,-7.46522,-78.4196,-363.048,-13,7475370)
	spawnMobile("lok", "young_spined_snake_cave",720,-4.59927,-78.1098,-344.761,0,7475370)
	spawnMobile("lok", "young_spined_snake_cave",720,-17.7727,-78.364,-366.79,0,7475370)
        --Cell[7475371 ID 17]
	spawnMobile("lok", "aged_kimogila_cave",7200,-100.0,-82.8,-345.1,54,7475371)
	spawnMobile("lok", "giant_spined_snake_cave",720,-122.795,-84.7927,-342.915,0,7475371)
	spawnMobile("lok", "kimogila_hatchling_cave",1800,-108.81,-82.8847,-323.858,-174,7475371)
        --Cell[7475372 ID 18]
	spawnMobile("lok", "kimogila_cave",1800,84.07,-100.743,-366.217,38,7475372)
        --Cell[7475373 ID 19]
        --Cell[7475374 ID 20]
	spawnMobile("lok", "giant_dune_kimogila_matriarch_cave",7200,-1.20746,-120.581,-369.372,56,7475374)
	spawnMobile("lok", "kimogila_hatchling_cave",1800,23.687,-119.039,-377.05,72,7475374)
	spawnMobile("lok", "kimogila_hatchling_cave",1800,4.95438,-118.787,-350.946,96,7475374)
	spawnMobile("lok", "young_spined_snake_cave",720,-26.3,-118.8,-370.0,0,7475374)
	spawnMobile("lok", "young_spined_snake_cave",720,4.6478,-118.883,-395.097,0,7475374)

end
