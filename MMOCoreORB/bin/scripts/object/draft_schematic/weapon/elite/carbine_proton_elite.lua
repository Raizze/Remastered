object_draft_schematic_weapon_carbine_proton_elite = object_draft_schematic_weapon_shared_carbine_proton_elite:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Elite Proton Carbine",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 3, 

   xpType = "crafting_weapons_general", 
   xp = 550, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "coil_carbine_proton","barrel", "scope", "stock"},
   ingredientSlotType = {0, 0, 0, 1, 1, 1, 3, 3},
   resourceTypes = {"aluminum_linksteel", "metal_nonferrous", "metal", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_coil_carbine_proton.iff", "object/tangible/component/weapon/shared_blaster_rifle_barrel.iff", "object/tangible/component/weapon/shared_scope_weapon.iff", "object/tangible/component/weapon/shared_stock.iff"},
   resourceQuantities = {65, 30, 12, 5, 1, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100},
   ingredientAppearance = {"", "", "", "", "coil", "muzzle", "scope", "stock"},

   targetTemplate = "object/weapon/ranged/carbine/carbine_proton.iff",

   additionalTemplates = { }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_carbine_proton_elite, "object/draft_schematic/weapon/carbine_proton_elite.iff")
