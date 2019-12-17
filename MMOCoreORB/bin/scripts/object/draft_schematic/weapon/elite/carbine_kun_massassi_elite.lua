object_draft_schematic_weapon_carbine_kun_massassi_elite = object_draft_schematic_weapon_shared_carbine_kun_massassi_elite:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Elite Kun Massasi Carbine",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 25, 
   size = 1, 

   xpType = "crafting_weapons_general", 
   xp = 200, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "massassi_barrel", "scope", "stock"},
   ingredientSlotType = {0, 0, 0, 1, 1, 3, 3},
   resourceTypes = {"aluminum_titanium", "copper_platinite", "metal", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_carbine_massassi_barrel.iff", "object/tangible/component/weapon/shared_scope_weapon.iff", "object/tangible/component/weapon/shared_stock.iff"},
   resourceQuantities = {65, 25, 10, 5, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100},
   ingredientAppearance = {"", "", "", "", "", "scope", "stock"},


   targetTemplate = "object/weapon/ranged/carbine/carbine_kun_massassi.iff",

   additionalTemplates = {     }

}

ObjectTemplates:addTemplate(object_draft_schematic_weapon_carbine_kun_massassi_elite, "object/draft_schematic/weapon/carbine_kun_massassi_elite.iff")
