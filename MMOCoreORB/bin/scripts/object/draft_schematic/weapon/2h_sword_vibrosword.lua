object_draft_schematic_weapon_2h_sword_vibrosword = object_draft_schematic_weapon_shared_2h_sword_vibrosword:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Vibrosword",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 280, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"sword_core_jacket", "cutting_edge", "grip_unit", "vibro_sword_generator", "reinforcement_core"},
   ingredientSlotType = {0, 0, 0, 1, 1},
   resourceTypes = {"iron_kammris", "aluminum_phrik", "petrochem_inert_polymer", "object/tangible/loot/dungeon/rem_custom/shared_vibro_sword_generator.iff",  "object/tangible/component/weapon/shared_reinforcement_core.iff"},
   resourceQuantities = {120, 85, 60, 1, 1},
   contribution = {100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/2h_sword/2h_sword_pvp_bf_01.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_2h_sword_vibrosword, "object/draft_schematic/weapon/2h_sword_vibrosword.iff")