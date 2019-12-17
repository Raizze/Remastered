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


object_tangible_loot_simple_kit_picture_printer = object_tangible_loot_simple_kit_shared_picture_printer:new {
		
	templateType = LOOTKIT,
	
	gameObjectType = 8233,
	
	--These are used to determine which components are necessary in the loot kit to finish the item
	collectibleComponents = {"object/tangible/loot/simple_kit/paint_cartridge.iff", "object/tangible/loot/simple_kit/flat_canvas.iff", "object/tangible/loot/simple_kit/paint_disperser.iff", "object/tangible/loot/tool/viewscreen_broken_s1.iff"},
	
	collectibleReward =  {
		"object/tangible/painting/painting_droid_bright.iff", 
		"object/tangible/painting/painting_double_helix.iff", 
		"object/tangible/painting/painting_bioengineer_orange.iff", 
		"object/tangible/painting/painting_trees_s01.iff", 
		"object/tangible/painting/painting_planet_s01.iff", 
		"object/tangible/painting/painting_zabrak_m.iff", 
		"object/tangible/painting/painting_wookiee_m.iff", 
		"object/tangible/painting/painting_twilek_m.iff", 
		"object/tangible/painting/painting_trandoshan_m.iff", 
		"object/tangible/painting/painting_rodian_f.iff", 
		"object/tangible/painting/painting_bothan_m.iff", 
		"object/tangible/painting/painting_bothan_f.iff", 
		"object/tangible/painting/painting_schematic_weapon_s03.iff", 
		"object/tangible/painting/painting_schematic_transport_ship.iff", 
		"object/tangible/painting/painting_food_baking_s02.iff", 
		"object/tangible/painting/painting_tato_s04.iff", 
		"object/tangible/painting/painting_rodian_f_ad_01.iff", 
		"object/tangible/painting/painting_endor_style_01.iff",
		"object/tangible/painting/painting_clone_trooper_01.iff",
		"object/tangible/painting/painting_corl_02.iff",
		"object/tangible/painting/painting_house_cleanup_imperial.iff",
		"object/tangible/painting/painting_outbreak_biohazard_01.iff",
		"object/tangible/painting/painting_outbreak_biohazard_03.iff",
		"object/tangible/painting/painting_pvp_reward_rebel.iff",
		"object/tangible/holiday/empire_day/imperial_recruitment_poster.iff",
		"object/tangible/holiday/empire_day/mara_jade_poster.iff",
		"object/tangible/holiday/empire_day/painting_empire_day_2010_rebel.iff",
		"object/tangible/holiday/empire_day/painting_empire_day_2010_imperial.iff",
		"object/tangible/holiday/empire_day/rebel_resistance_poster.iff",
		"object/tangible/holiday/love_day/love_day_2009_painting_reward.iff",
		"object/tangible/tcg/series1/decorative_painting_imperial_propaganda.iff",
		"object/tangible/tcg/series1/decorative_painting_trooper.iff",
		"object/tangible/tcg/series3/decorative_hoth_travel_advertisement.iff",
		"object/tangible/tcg/series3/decorative_merr_sonn_jt12_jetpack_blueprints.iff",
		"object/tangible/tcg/series3/decorative_swg_tcg_painting.iff",
		"object/tangible/tcg/series4/decorative_kashyyyk_travel_advertisement.iff",
		"object/tangible/tcg/series5/combine_object_at_at_blueprint.iff",
		"object/tangible/tcg/series5/decorative_jedi_forms_painting.iff",
		"object/tangible/tcg/series5/title_grant.iff",
		"object/tangible/tcg/series6/painting_nightsister.iff",
		"object/tangible/tcg/series6/painting_travel_ad_coruscant.iff",
		"object/tangible/tcg/series6/painting_winged_quenker.iff",
		"object/tangible/tcg/series7/painting_commando.iff",
		"object/tangible/tcg/series8/decorative_shield_generator_blueprint.iff",
		"object/tangible/tcg/series8/painting_tcg8_vintage.iff",
		"object/tangible/veteran_reward/frn_vet_painting_april_07.iff",
		"object/tangible/collection/reward/col_reward_tatooine_vistas_painting.iff",
		"object/tangible/collection/reward/datapad_painting_reward.iff",
		"object/tangible/collection/reward/square_tile_collection_reward.iff",
		"object/tangible/furniture/decorative/community_painting_2009_imp.iff",
		--"object/tangible/furniture/decorative/community_tcg_gcw_photo_contest_painting_2010_01.iff",
		"object/tangible/furniture/decorative/heroic_axkva_min_painting.iff",
		"object/tangible/furniture/decorative/heroic_hoth_painting.iff",
		"object/tangible/furniture/decorative/heroic_marauder_king_painting.iff",
		"object/tangible/furniture/decorative/imperial_community_painting_2008.iff",
		"object/tangible/furniture/decorative/pub29_mustafar_painting.iff",
		"object/tangible/furniture/decorative/rebel_community_painting_2008.iff",
		"object/tangible/furniture/decorative/vet_reward_emperor_painting.iff",
		"object/tangible/furniture/all/frn_all_death_troopers_painting.iff",
		"object/tangible/furniture/nym_themepark/nym_themepark_painting.iff",
		"object/tangible/furniture/gcw/gcw_rebel_painting_01.iff",
		"object/tangible/loot/mustafar/must_painting_01.iff",
		"object/tangible/loot/mustafar/must_painting_02.iff",
		"object/tangible/loot/undead/decal_arrow_left.iff",
		"object/tangible/loot/undead/decal_imperial_graffiti_01.iff",
		"object/tangible/loot/undead/decal_imperial_graffiti_03.iff",
		"object/tangible/loot/undead/decal_rebel_graffiti_02.iff",
		"object/tangible/loot/undead/decal_pgc_s02.iff",
		"object/tangible/tcg/series4/consumable_falleens_fist.iff",
	},
	
	deleteComponents = 0,
	
	attributes = {}
}

ObjectTemplates:addTemplate(object_tangible_loot_simple_kit_picture_printer, "object/tangible/loot/simple_kit/picture_printer.iff")
