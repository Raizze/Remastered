object_draft_schematic_weapon_2h_sword_sith = object_draft_schematic_weapon_shared_2h_sword_sith:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Two-Handed Sith Sword",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 110, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"sword_core_jacket", "grip", "cutting_edge", "sith_blade", "jacketed_sword_core"},
   ingredientSlotType = {0, 0, 0, 1, 1},
   resourceTypes = {"steel_ditanium", "aluminum_perovskitic", "petrochem_inert_polymer","object/tangible/loot/dungeon/rem_custom/shared_sith_blade.iff",  "object/tangible/component/weapon/shared_sword_core.iff"},
   resourceQuantities = {120, 85, 60, 1, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/2h_sword/2h_sword_sith.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_2h_sword_sith, "object/draft_schematic/weapon/2h_sword_sith.iff")