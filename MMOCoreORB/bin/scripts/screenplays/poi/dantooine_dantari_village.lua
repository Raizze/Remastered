DantariVillageScreenPlay = ScreenPlay:new {
	numberOfActs = 1,

}

registerScreenPlay("DantariVillageScreenPlay", true)

function DantariVillageScreenPlay:start()
	if (isZoneEnabled("dantooine")) then
		self:spawnMobiles()
	end
end

function DantariVillageScreenPlay:spawnMobiles()
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-3848.4,2,-5722.2,-50,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-3839.2,6,-5696.3,-165,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-3848.6,6,-5695,-170,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-3865.1,2.5,-5696.2,-96,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-3873.1,2.5,-5697.2,76,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-7207.8,3,-913.9,160,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-7202.1,3,-921.8,-78,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-7242.2,3,-864,127,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-7158.5,3,-836.6,-158,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-7132.3,3,-894.6,-98,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,-7134.5,3,-886.6,-120,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,5584.4,0.5,-657.8,-88,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,5557.1,0.2,-619.2,154,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,5592.4,1.4,-619.1,-151,0)
	spawnMobile("dantooine", "dantari_battlelord_poi",600,5593.2,0.8,-645.8,-76,0)
	
	spawnMobile("dantooine", "dantari_chief_poi",1800,-3839.3,8,-5753.5,30,0)
	spawnMobile("dantooine", "dantari_chief_poi",1800,-3886.9,2.5,-5686,-159,0)
	spawnMobile("dantooine", "dantari_chief_poi",1800,-7209.2,3,-923.1,32,0)
	spawnMobile("dantooine", "dantari_chief_poi",1800,5567,0.2,-648.2,-145,0)
	
	spawnMobile("dantooine", "dantari_raider_poi",600,-3893.6,2.4,-5708.2,85,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-3088.7,2.5,-5720.3,61,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-3882.9,2.5,-5730.6,28,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-3871.6,2.5,-5735.8,7,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-3862.38,2.5,-5733.55,-49,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-3797.3,5,-5717.5,-136,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-3787.6,4.4,-5727.9,-120,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-7166.9,3,-938.9,-26,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-7186.7,3,-941.2,3,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-7225.4,3,-898.7,41,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-7242.7,3,-886.4,87,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-7220.4,3,-856.4,169,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-7180.3,3,-842.1,156,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-7146.8,3,-856.4,-130,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,-7143.2,3,-913.4,-55,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,5514.5,0.4,-707.7,144,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,5540.9,0.2,-699,-74,0)
	spawnMobile("dantooine", "dantari_raider_poi",600,5544.9,0.2,-678.5,136,0)

	--Rem Custom (Dantari Village South)
	spawnMobile("dantooine", "dantari_strategist",600,-3817.28,3.5,-5722.73,-166,0)
	spawnMobile("dantooine", "dantari_strategist",600,-3860.84,2.50115,-5701.2,152,0)
	spawnMobile("dantooine", "dantari_strategist",600,-3874.41,2.5,-5702.37,-156,0)
	spawnMobile("dantooine", "dantari_strategist",600,-3889.49,2.5,-5721.38,58,0)

	spawnMobile("dantooine", "dantari_raider",600,-3861.41,6.236,-5753.75,-1,0)
	spawnMobile("dantooine", "dantari_raider",600,-3826.81,2.02384,-5738.13,-98,0)
	spawnMobile("dantooine", "dantari_raider",600,-3827.37,1.97975,-5723.91,75,0)
	spawnMobile("dantooine", "dantari_raider",600,-3797.37,10.577,-5690.71,-93,0)
	spawnMobile("dantooine", "dantari_raider",600,-3832.48,6,-5684.66,138,0)
	spawnMobile("dantooine", "dantari_raider",600,-3807.45,0.524645,-5769.33,22,0)

	spawnMobile("dantooine", "dantari_battlelord",600,-3785.81,12.0993,-5692.96,-114,0)
	spawnMobile("dantooine", "dantari_battlelord",600,-3821.6,8.55824,-5682.78,158,0)
	spawnMobile("dantooine", "dantari_battlelord",600,-3897.62,2.63362,-5689.9,74,0)
	spawnMobile("dantooine", "dantari_battlelord",600,-3903.38,2.25229,-5717.97,74,0)
	spawnMobile("dantooine", "dantari_battlelord",600,-3856.53,2.5,-5734.86,-32,0)

	spawnMobile("dantooine", "katarn",1350,-3878.89,2.5,-5713.56,120,0)
	spawnMobile("dantooine", "katarn",1350,-3811.53,0.498749,-5752.64,-58,0)

	--Rem Custom (Dantari Village West)
	spawnMobile("dantooine", "dantari_raider",600,-7138.58,3,-893.352,33,0)
	spawnMobile("dantooine", "dantari_raider",600,-7140.42,3,-887.805,122,0)
	spawnMobile("dantooine", "dantari_raider",600,-7243.83,3,-865.437,92,0)
	spawnMobile("dantooine", "dantari_raider",600,-7175.29,3,-940.646,-18,0)
	spawnMobile("dantooine", "dantari_raider",600,-7177.95,3,-940.346,-13,0)
	spawnMobile("dantooine", "dantari_raider",600,-7147.24,3,-872.028,-117,0)
	spawnMobile("dantooine", "dantari_raider",600,-7211.98,3,-791.923,-78,0)
	spawnMobile("dantooine", "dantari_raider",600,-7213.87,3,-794.293,-32,0)

	spawnMobile("dantooine", "dantari_strategist",600,-7145.41,3,-860.514,-70,0)
	spawnMobile("dantooine", "dantari_strategist",600,-7224.1,3,-900.264,11,0)
	spawnMobile("dantooine", "dantari_strategist",600,-7211.25,3,-918.055,11,0)
	spawnMobile("dantooine", "dantari_strategist",600,-7231.4,3,-880.0,92,0)

	spawnMobile("dantooine", "dantari_battlelord",600,-7168.5,3,-856.638,-156,0)
	spawnMobile("dantooine", "dantari_battlelord",600,-7190.24,3,-928.221,63,0)
	spawnMobile("dantooine", "dantari_battlelord",600,-7171.27,3,-836.465,156,0)

	spawnMobile("dantooine", "katarn",1350,-7202.13,3,-847.817,157,0)
	spawnMobile("dantooine", "katarn",1350,-7155.5,3,-926.509,-46,0)

	--Rem Custom (Dantari Village East)
	spawnMobile("dantooine", "dantari_raider",600,5544.98,0.156905,-645.052,140,0)
	spawnMobile("dantooine", "dantari_raider",600,5579.31,0.447963,-631.608,-114,0)
	spawnMobile("dantooine", "dantari_raider",600,5539.85,0.163608,-674.4,151,0)
	spawnMobile("dantooine", "dantari_raider",600,5598.07,0.972414,-637.672,-96,0)
	spawnMobile("dantooine", "dantari_raider",600,5580.47,0.330472,-661.711,18,0)
	spawnMobile("dantooine", "dantari_raider",600,5575.28,0.323114,-663.123,-129,0)
	spawnMobile("dantooine", "dantari_raider",600,5543.54,0.261294,-635.873,23,0)

	spawnMobile("dantooine", "dantari_battlelord",600,5569.54,0.199146,-635.748,68,0)
	spawnMobile("dantooine", "dantari_battlelord",600,5509.77,0.724633,-698.297,40,0)
	spawnMobile("dantooine", "dantari_battlelord",600,5516.83,9.78725,-668.903,56,0)

	spawnMobile("dantooine", "dantari_strategist",600,5573.91,0.296213,-630.217,167,0)
	spawnMobile("dantooine", "dantari_strategist",600,5523.1,0.286887,-694.987,-25,0)
	spawnMobile("dantooine", "dantari_strategist",600,5599.85,1.08541,-619.769,51,0)

	spawnMobile("dantooine", "dantari_chief_poi",1800,5512.24,0.424377,-693.247,-163,0)

	spawnMobile("dantooine", "katarn",1350,5560.74,0.163296,-679.259,-51,0)
	spawnMobile("dantooine", "katarn",1350,5530.01,0.231062,-710.311,18,0)
end
