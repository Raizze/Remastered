EndorKorgaCaveScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

	screenplayName = "EndorKorgaCaveScreenPlay",

	lootContainers = {
		733361, --2 of them
		733364,
		733370,
		733368
	},

	lootLevel = 90,

	lootGroups = {
		{
			groups = {
				{group = "korga_common", chance = 2500000},
				{group = "rem_named_crystals", chance = 10000},
				{group = "forage_medical_component", chance = 1500000},
				{group = "clothing_attachments", chance = 200000},
				{group = "wookiee_loot_common", chance = 5590000},
				{group = "armor_attachments", chance = 200000}
			},
			lootChance = 10000000
		}
	},

	lootContainerRespawn = 1800
}

registerScreenPlay("EndorKorgaCaveScreenPlay", true)

function EndorKorgaCaveScreenPlay:start()
	if (isZoneEnabled("endor")) then
		self:spawnMobiles()
		self:initializeLootContainers()
	end
end

function EndorKorgaCaveScreenPlay:spawnMobiles()

	spawnMobile("endor", "korga_laborer_poi",1800,26.4,-42.2,-62.1,-20,733361)
	spawnMobile("endor", "korga_scout_poi",1800,21.9,-42,-63.3,-9,733361)
	spawnMobile("endor", "korga_laborer_poi",1800,46,-47.9,-30.1,-140,733361)
	spawnMobile("endor", "korga_scout_poi",1800,41.7,-46.1,-27.2,-176,733361)
	spawnMobile("endor", "korga_battlelord_poi",1800,47.8,-48.4,-61.1,-19,733361)
	spawnMobile("endor", "korga_elder_poi",1800,48,-48.4,-59.4,169,733361)
	spawnMobile("endor", "korga_ancient_poi",1800,51.9,-48.8,-60.4,59,733361)
	spawnMobile("endor", "korga_elder_poi",1800,45.7,-47.1,-8,99,733361)
	spawnMobile("endor", "korga_ancient_poi",1800,48.4,-47.1,-8.5,-86,733361)

	spawnMobile("endor", "korga_spiritmaster_poi",1800,55.5,-68.4,-39.6,-163,733361)
	spawnMobile("endor", "korga_dark_shaman_poi",1800,51.3,-67.7,-39.8,-174,733361)

	spawnMobile("endor", "korga_elder_poi",1800,92.4,-61.6,-12.6,-170,733362)
	spawnMobile("endor", "korga_ancient_poi",1800,91.8,-62.2,-17,8,733362)

	spawnMobile("endor", "korga_battlelord_poi",1800,62.3,-75.5,-62.8,23,733363)
	spawnMobile("endor", "korga_elder_poi",1800,63.6,-75.3,-59.8,-160,733363)
	spawnMobile("endor", "korga_ancient_poi",1800,64.3,-75.4,-62.2,-57,733363)
	spawnMobile("endor", "korga_battlelord_poi",1800,94.2,-76.2,-84.2,-127,733363)
	spawnMobile("endor", "korga_elder_poi",1800,89.9,-76.2,-87.5,48,733363)

	spawnMobile("endor", "korga_scout_poi",1800,51.7,-76.6,-87.8,64,733365)
	spawnMobile("endor", "korga_laborer_poi",1800,64.9,-66.2,-138.4,-19,733365)

	spawnMobile("endor", "korga_scout_poi",1800,92,-66.9,-136.8,-117,733366)
	spawnMobile("endor", "korga_laborer_poi",1800,93.1,-67,-106.8,-174,733364)

	spawnMobile("endor", "korga_ancient_poi",1800,113.5,-67.3,-89.6,153,733367)
	spawnMobile("endor", "korga_elder_poi",1800,114.3,-66.2,-128,9,733367)
	spawnMobile("endor", "korga_ancient_poi",1800,150.4,-66.6,-126.1,-46,733367)
	spawnMobile("endor", "korga_elder_poi",1800,141.4,-66.7,-88.2,-145,733367)
	spawnMobile("endor", "korga_battlelord_poi",1800,133.9,-66.6,-108.9,-93,733367)

	spawnMobile("endor", "korga_scout_poi",1800,165.2,-66.7,-98,-95,733368)
	spawnMobile("endor", "korga_chieftain_poi",1800,192.8,-66.9,-107.3,-64,733368)
	spawnMobile("endor", "korga_battlelord_poi",1800,188.8,-65.8,-107.5,95,733368)
	spawnMobile("endor", "korga_battlelord_poi",1800,190.3,-66.5,-103.2,128,733368)

	spawnMobile("endor", "korga_scout_poi",1800,49.7,-51.8,-85.2,1,733369)

	spawnMobile("endor", "korga_laborer_poi",1800,71.9,-46.3,-106.7,-98,733364)
	spawnMobile("endor", "korga_ancient_poi",1800,95.7,-45.6,-99,131,733364)
	spawnMobile("endor", "korga_elder_poi",1800,86.7,-45.8,-119.7,-15,733364)
	spawnMobile("endor", "korga_battlelord_poi",1800,86.2,-46.4,-116.9,177,733364)

	spawnMobile("endor", "korga_cub_poi",1800,95.3,-45.8,-145.5,-88,733370)
	spawnMobile("endor", "korga_cub_poi",1800,94.5,-46.2,-148.2,-53,733370)
	spawnMobile("endor", "korga_cub_poi",1800,92.1,-46.1,-149.1,-5,733370)
	spawnMobile("endor", "korga_adept_poi",1800,93.4,-46.2,-143.1,-169,733370)
	spawnMobile("endor", "korga_elder_poi",1800,90.6,-46.7,-144.2,134,733370)
	spawnMobile("endor", "korga_spiritmaster_poi",1800,88,-46.4,-147.8,-169,733370)
	spawnMobile("endor", "korga_dark_shaman_poi",1800,82.5,-46.6,-143.9,79,733370)
	spawnMobile("endor", "korga_dark_shaman_poi",1800,82.7,-46.2,-138.9,91,733370)

	--Rem Custom
	spawnMobile("endor", "kubaza_beetle",1800,25.9874,-42.8517,-69.2301,-9,733361)
	spawnMobile("endor", "kubaza_beetle",1800,53.3396,-48.745,-18.4377,-116,733361)
	spawnMobile("endor", "kubaza_beetle",1800,85.399,-68.7376,-41.8838,-11,733362)

	spawnMobile("endor", "lava_flea",1800,50.4255,-48.0591,-68.1554,26,733361)
	spawnMobile("endor", "lava_flea",1800,52.8325,-48.7748,-55.969,-177,733361)
	spawnMobile("endor", "lava_flea",1800,91.2499,-76.4623,-61.7119,-147,733363)
	spawnMobile("endor", "lava_flea",1800,77.5012,-77.1805,-86.1639,80,733363)

	spawnMobile("endor", "korga_scout_poi",1800,62.3273,-66.9312,-132.332,-50,733365)

	spawnMobile("endor", "korga_battlelord_poi",1800,86.7519,-66.8702,-137.059,162,733366)

	spawnMobile("endor", "tulrus",1800,152.946,-65.8769,-97.3583,-94,733367)
	spawnMobile("endor", "tulrus",1800,193.276,-66.5872,-96.5741,-118,733368)

end	
