object_draft_schematic_weapon_rifle_fallann = object_draft_schematic_weapon_shared_rifle_fallann:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Fallann Hyper-Rifle",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 20, 
   size = 3, 

   xpType = "crafting_weapons_general", 
   xp = 230, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "barrel_rifle_fallann", "scope", "stock"},
   ingredientSlotType = {0, 0, 0, 1, 1, 3, 3},
   resourceTypes = {"steel_ditanium", "aluminum_linksteel", "petrochem_inert_polymer", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/loot/dungeon/rem_custom/shared_barrel_rifle_fallann.iff", "object/tangible/component/weapon/shared_scope_weapon.iff", "object/tangible/component/weapon/shared_stock.iff"},
   resourceQuantities = {130, 70, 28, 1, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/rifle/rifle_adventurer.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_rifle_fallann, "object/draft_schematic/weapon/rifle_fallann.iff")
