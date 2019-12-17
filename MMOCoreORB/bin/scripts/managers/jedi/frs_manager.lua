frsEnabled = 1

-- Object ID of Enclave buildings
lightEnclaveID = 8525417
darkEnclaveID = 3435626

petitionInterval = 86400000 -- 1 day
votingInterval = 86400000 -- 1 day
acceptanceInterval = 86400000 -- 1 day
maintenanceInterval = 86400000 -- 1 day

requestDemotionDuration = 604800000 -- 7 days
voteChallengeDuration = 604800000 -- 7 days

arenaOpenInterval = 5400000 -- 90 mins
arenaClosedInterval = 108000000 -- 30 hours
arenaChallengeDuration = 3600000 -- 60 mins
arenaChallengeCooldown = 90000000 -- 25 hours

-- Costs are in FRS experience
baseMaintCost = 100
requestDemotionCost = 2000
voteChallengeCost = 1000

maxPetitioners = 11
maxChallenges = 20
missedVotePenalty = 100 -- FRS XP

-- { rank, skillName, requiredExperience, playerCap, robe }
lightRankingData = {
	{ 0, "force_rank_light_novice", 0, -1, "object/tangible/wearables/robe/robe_jedi_light_s01.iff" },
	{ 1, "force_rank_light_rank_01", 5000, 10, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 2, "force_rank_light_rank_02", 15000, 3, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 3, "force_rank_light_rank_03", 25000, 3, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 4, "force_rank_light_rank_04", 35000, 2, "object/tangible/wearables/robe/robe_jedi_light_s02.iff" },
	{ 5, "force_rank_light_rank_05", 50000, 2, "object/tangible/wearables/robe/robe_jedi_light_s03.iff" },
	{ 6, "force_rank_light_rank_06", 70000, 2, "object/tangible/wearables/robe/robe_jedi_light_s03.iff" },
	{ 7, "force_rank_light_rank_07", 90000, 2, "object/tangible/wearables/robe/robe_jedi_light_s03.iff" },
	{ 8, "force_rank_light_rank_08", 130000, 2, "object/tangible/wearables/robe/robe_jedi_light_s04.iff" },
	{ 9, "force_rank_light_rank_09", 180000, 2, "object/tangible/wearables/robe/robe_jedi_light_s04.iff" },
	{ 10, "force_rank_light_rank_10", 250000, 2, "object/tangible/wearables/robe/robe_jedi_light_s05.iff" },
	{ 11, "force_rank_light_master", 400000, 1, "object/tangible/wearables/robe/robe_jedi_light_s05.iff" },
}

darkRankingData = {
	{ 0, "force_rank_dark_novice", 0, -1, "object/tangible/wearables/robe/robe_jedi_dark_s01.iff" },
	{ 1, "force_rank_dark_rank_01", 5000, 10, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 2, "force_rank_dark_rank_02", 15000, 3, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 3, "force_rank_dark_rank_03", 25000, 3, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 4, "force_rank_dark_rank_04", 35000, 2, "object/tangible/wearables/robe/robe_jedi_dark_s02.iff" },
	{ 5, "force_rank_dark_rank_05", 50000, 2, "object/tangible/wearables/robe/robe_jedi_dark_s03.iff" },
	{ 6, "force_rank_dark_rank_06", 70000, 2, "object/tangible/wearables/robe/robe_jedi_dark_s03.iff" },
	{ 7, "force_rank_dark_rank_07", 90000, 2, "object/tangible/wearables/robe/robe_jedi_dark_s03.iff" },
	{ 8, "force_rank_dark_rank_08", 130000, 2, "object/tangible/wearables/robe/robe_jedi_dark_s04.iff" },
	{ 9, "force_rank_dark_rank_09", 180000, 2, "object/tangible/wearables/robe/robe_jedi_dark_s04.iff" },
	{ 10, "force_rank_dark_rank_10", 250000, 2, "object/tangible/wearables/robe/robe_jedi_dark_s05.iff" },
	{ 11, "force_rank_dark_master", 400000, 1, "object/tangible/wearables/robe/robe_jedi_dark_s05.iff" },
}

enclaveRoomRequirements = {
	-- Light enclave
	{ 8525444, -1 }, -- entrancehall1
	{ 8525421, 1 }, -- tier1hall1
	{ 8525420, 1 }, -- tier1room
	{ 8525419, 1 }, -- tier1hall2
	{ 8525424, 5 }, -- tier2hall1
	{ 8525423, 5 }, -- tier2room
	{ 8525422, 5 }, -- tier2hall2
	{ 8525433, 8 }, -- tier3hall1
	{ 8525432, 8 }, -- tier3room
	{ 8525431, 8 }, -- tier3hall2
	{ 8525430, 10 }, -- tier4hall1
	{ 8525429, 10 }, -- tier4room
	{ 8525428, 10 }, -- tier4hall2
	{ 8525427, 11 }, -- tier5hall1
	{ 8525426, 11 }, -- tier5room
	{ 8525425, 11 }, -- tier5hall2
	-- Dark enclave
	{ 3435626, -1 }, -- ramp1
	{ 3435644, 1 }, -- hallwayb1
	{ 3435650, 1 }, -- council1
	{ 3435637, 5 }, -- hallwaya1
	{ 3435652, 5 }, -- council3
	{ 3435638, 8 }, -- hallwaya2
	{ 3435653, 8 }, -- council4
	{ 3435645, 8 }, -- hallwayb2
	{ 3435639, 10 }, -- hallwaya3
	{ 3435646, 10 }, -- hallwayb3
	{ 3435651, 10 }, -- council2
	{ 3435640, 11 }, -- hallwaya4
	{ 3435647, 11 }, -- hallwayb4
	{ 3435641, 11 }, -- chamberramp
	{ 3435642, 11 }, -- chamber
}

-- Key followed by values for player rank 0 through 11
-- Key references the player's target
-- Ex: Rank 5 loses to BH, see "bh_lose" key and 6th integer value in same row
frsExperienceValues = {
	{ "nonjedi_win", 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500 },
	{ "nonjedi_lose", 2000, 2500, 3500, 4500, 6000, 7500, 9500, 11000, 13500, 15500, 17500, 20000 },
	{ "bh_win", 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000, 2000 },
	{ "bh_lose", 2000, 2500, 3500, 4500, 6000, 7500, 9500, 11000, 13500, 15500, 17500, 20000 },
	{ "padawan_win", 3600, 3600, 3600, 3600, 3600, 3600, 3600, 3600, 3600, 3600, 3600, 3600 },
	{ "padawan_lose", 1000, 1300, 2000, 2500, 3500, 4500, 5500, 6500, 8000, 9000, 10000, 12000 },
	{ "rank0_win", 5250, 5250, 5250, 5250, 5250, 5250, 5250, 5250, 5250, 5250, 5250, 5250 },
	{ "rank0_lose", 500, 1000, 1500, 2000, 3000, 4000, 5000, 6000, 7500, 8500, 10000, 11500 },
	{ "rank1_win", 5700, 5700, 5700, 5700, 5700, 5700, 5700, 5700, 5700, 5700, 5700, 5700 },
	{ "rank1_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
	{ "rank2_win", 6750, 6750, 6750, 6750, 6750, 6750, 6750, 6750, 6750, 6750, 6750, 6750 },
	{ "rank2_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
	{ "rank3_win", 9750, 9750, 9750, 9750, 9750, 9750, 9750, 9750, 9750, 9750, 9750, 9750 },
	{ "rank3_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
	{ "rank4_win", 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000, 12000 },
	{ "rank4_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
	{ "rank5_win", 14250, 14250, 14250, 14250, 14250, 14250, 14250, 14250, 14250, 14250, 14250, 14250 },
	{ "rank5_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
	{ "rank6_win", 16500, 16500, 16500, 16500, 16500, 16500, 16500, 16500, 16500, 16500, 16500, 16500 },
	{ "rank6_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
	{ "rank7_win", 19500, 19500, 19500, 19500, 19500, 19500, 19500, 19500, 19500, 19500, 19500, 19500 },
	{ "rank7_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
	{ "rank8_win", 22500, 22500, 22500, 22500, 22500, 22500, 22500, 22500, 22500, 22500, 22500, 22500 },
	{ "rank8_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
	{ "rank9_win", 25500, 25500, 25500, 25500, 25500, 25500, 25500, 25500, 25500, 25500, 25500, 25500 },
	{ "rank9_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
	{ "rank10_win", 29250, 29250, 29250, 29250, 29250, 29250, 29250, 29250, 29250, 29250, 29250, 29250 },
	{ "rank10_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
	{ "rank11_win", 32250, 32250, 32250, 32250, 32250, 32250, 32250, 32250, 32250, 32250, 32250, 32250 },
	{ "rank11_lose", 200, 500, 1000, 1800, 2600, 3500, 4500, 5500, 7000, 8300, 9500, 11000 },
}
