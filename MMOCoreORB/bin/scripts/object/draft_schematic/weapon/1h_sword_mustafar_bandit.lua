object_draft_schematic_weapon_1h_sword_mustafar_bandit = object_draft_schematic_weapon_shared_1h_sword_mustafar_bandit:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Mustafar Bandit Sword",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 35, 
   size = 1, 

   xpType = "crafting_weapons_general", 
   xp = 80, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"sword_core_jacket", "cutting_edge", "grip", "knife_shaft", "bandit_blade", "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 0, 1, 1},
   resourceTypes = {"steel", "iron", "metal", "copper", "object/tangible/loot/dungeon/rem_custom/shared_bandit_blade.iff",  "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {60, 10, 12, 12, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/sword/som_sword_mustafar_bandit.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_1h_sword_mustafar_bandit, "object/draft_schematic/weapon/1h_sword_mustafar_bandit.iff")