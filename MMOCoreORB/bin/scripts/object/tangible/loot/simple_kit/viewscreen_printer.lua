--Copyright (C) 2010 <SWGEmu>


--This File is part of Core3.

--This program is free software; you can redistribute 
--it and/or modify it under the terms of the GNU Lesser 
--General Public License as published by the Free Software
--Foundation; either version 2 of the License, 
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful, 
--but WITHOUT ANY WARRANTY; without even the implied warranty of 
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. 
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General 
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules 
--is making a combined work based on Engine3. 
--Thus, the terms and conditions of the GNU Lesser General Public License 
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3 
--give you permission to combine Engine3 program with free software 
--programs or libraries that are released under the GNU LGPL and with 
--code included in the standard release of Core3 under the GNU LGPL 
--license (or modified versions of such code, with unchanged license). 
--You may copy and distribute such a system following the terms of the 
--GNU LGPL for Engine3 and the licenses of the other code concerned, 
--provided that you include the source code of that other code when 
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated 
--to grant this special exception for their modified versions; 
--it is their choice whether to do so. The GNU Lesser General Public License 
--gives permission to release a modified version without this exception; 
--this exception also makes it possible to release a modified version 


object_tangible_loot_simple_kit_viewscreen_printer = object_tangible_loot_simple_kit_shared_viewscreen_printer:new {
		
	templateType = LOOTKIT,
	
	gameObjectType = 8233,
	
	--These are used to determine which components are necessary in the loot kit to finish the item
	collectibleComponents = {"object/tangible/loot/simple_kit/paint_cartridge.iff", "object/tangible/loot/simple_kit/flat_canvas.iff", "object/tangible/loot/simple_kit/paint_disperser.iff", "object/tangible/loot/tool/viewscreen_broken_s2.iff", "object/tangible/loot/simple_kit/viewscreen_reader.iff"},
	
	collectibleReward =  {
		"object/tangible/painting/painting_skyscraper.iff", 
		"object/tangible/painting/painting_freedom.iff", 
		"object/tangible/painting/painting_cargoport.iff", 
		"object/tangible/painting/painting_nebula_flower.iff", 
		"object/tangible/painting/painting_starmap.iff", 
		"object/tangible/painting/painting_zabrak_f.iff", 
		"object/tangible/painting/painting_wookiee_f.iff", 
		"object/tangible/painting/painting_trandoshan_m_01.iff", 
		"object/tangible/painting/painting_rodian_m.iff", 
		"object/tangible/painting/painting_human_f.iff", 
		"object/tangible/painting/painting_fighter_pilot_human_01.iff", 
		"object/tangible/painting/bestine_quest_painting.iff", 
		"object/tangible/painting/painting_schematic_weapon.iff", 
		"object/tangible/painting/painting_schematic_droid.iff", 
		"object/tangible/painting/painting_food_baking_s01.iff", 
		"object/tangible/painting/painting_waterfall.iff", 
		"object/tangible/painting/painting_agrilat_s01.iff", 
		"object/tangible/painting/painting_smoking_ad.iff",
		"object/tangible/painting/painting_chp5.iff",
		"object/tangible/painting/painting_corl_01.iff",
		"object/tangible/painting/painting_grievous_01.iff",
		"object/tangible/painting/painting_house_cleanup_rebel.iff",
		"object/tangible/painting/painting_outbreak_biohazard_02.iff",
		"object/tangible/painting/painting_pvp_reward_imperial.iff",
		"object/tangible/painting/painting_wod_outcast.iff",
		"object/tangible/holiday/empire_day/imperial_recruitment_poster_defaced.iff",
		"object/tangible/holiday/empire_day/painting_empire_day_2011_imperial.iff",
		"object/tangible/holiday/empire_day/painting_empire_day_2011_rebel.iff",
		"object/tangible/holiday/empire_day/wedge_antilles_poster.iff",
		"object/tangible/holiday/love_day/rewards_11/love_day_2011_painting.iff",
		"object/tangible/tcg/series1/consumable_nuna_ball_advertisement.iff",
		"object/tangible/tcg/series1/decorative_painting_darth_vader.iff",
		"object/tangible/tcg/series1/decorative_painting_jedi_crest.iff",
		"object/tangible/tcg/series1/decorative_painting_alliance_propaganda.iff",
		"object/tangible/tcg/series3/decorative_mustafar_travel_advertisement.iff",
		"object/tangible/tcg/series4/decorative_tatooine_travel_advertisement.iff",
		"object/tangible/tcg/series5/decorative_galactic_hunters_poster.iff",
		"object/tangible/tcg/series5/decorative_theater_poster.iff",
		"object/tangible/tcg/series6/combine_object_hk_droids_poster.iff",
		"object/tangible/tcg/series6/painting_spined_rancor.iff",
		"object/tangible/tcg/series6/painting_travel_ad_ord_mantell.iff",
		"object/tangible/tcg/series7/combine_object_gunship_blueprint.iff",
		"object/tangible/tcg/series7/painting_lando_poster.iff",
		"object/tangible/tcg/series8/painting_tcg8_victory.iff",
		"object/tangible/tcg/series8/painting_tcg8_yoda.iff",
		"object/tangible/veteran_reward/frn_vet_painting_community_summit_s02.iff",
		"object/tangible/collection/reward/com_link_painting_reward.iff",
		"object/tangible/collection/reward/space_taxi_sd_reward.iff",
		"object/tangible/furniture/decorative/30th_anniversary_painting_01.iff",
		"object/tangible/furniture/decorative/community_painting_2009_reb.iff",
		--"object/tangible/furniture/decorative/community_tcg_gcw_photo_contest_painting_2010_02.iff",
		--"object/tangible/furniture/decorative/community_tcg_gcw_photo_contest_painting_2010_03.iff",
		"object/tangible/furniture/decorative/heroic_exar_kun_painting.iff",
		"object/tangible/furniture/decorative/heroic_ig88_painting.iff",
		"object/tangible/furniture/decorative/heroic_tusken_painting.iff",
		"object/tangible/furniture/decorative/pub29_corellia_painting.iff",
		"object/tangible/furniture/decorative/pub29_ryatt_painting.iff",
		"object/tangible/furniture/decorative/vet_reward_rebel_painting.iff",
		"object/tangible/furniture/nym_themepark/nym_themepark_arena_poster.iff",
		"object/tangible/furniture/gcw/gcw_imperial_painting_01.iff",
		"object/tangible/loot/mustafar/must_painting_03.iff",
		"object/tangible/loot/mustafar/must_painting_04.iff",
		"object/tangible/loot/undead/decal_arrow_right.iff",
		"object/tangible/loot/undead/decal_imperial_graffiti_02.iff",
		"object/tangible/loot/undead/decal_rebel_graffiti_01.iff",
		"object/tangible/loot/undead/decal_rebel_graffiti_03.iff",
		"object/tangible/loot/undead/decal_pgc_s04.iff",
		"object/tangible/loot/creature_loot/collections/opt_in_mail_06.iff",

	},
	
	deleteComponents = 0,
	
	attributes = {}
}

ObjectTemplates:addTemplate(object_tangible_loot_simple_kit_viewscreen_printer, "object/tangible/loot/simple_kit/viewscreen_printer.iff")
