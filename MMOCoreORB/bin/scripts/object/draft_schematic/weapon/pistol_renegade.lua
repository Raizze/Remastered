object_draft_schematic_weapon_pistol_renegade = object_draft_schematic_weapon_shared_pistol_renegade:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Renegade Pistol",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 24, 
   size = 2, 

   xpType = "crafting_weapons_general", 
   xp = 160, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "muzzle_pistol_renegade", "scope"},
   ingredientSlotType = {0, 0, 0, 1, 1, 3},
   resourceTypes = {"steel_quadranium", "iron_kammris", "petrochem_inert_polymer", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/loot/dungeon/rem_custom/shared_muzzle_pistol_renegade.iff", "object/tangible/component/weapon/shared_scope_weapon.iff"},
   resourceQuantities = {85, 40, 28, 4, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/ranged/pistol/pistol_renegade.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_pistol_renegade, "object/draft_schematic/weapon/pistol_renegade.iff")