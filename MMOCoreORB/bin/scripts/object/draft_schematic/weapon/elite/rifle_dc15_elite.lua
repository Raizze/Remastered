object_draft_schematic_weapon_rifle_dc15_elite = object_draft_schematic_weapon_shared_rifle_dc15_elite:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Elite DC15 Rifle",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 17, 
   size = 2, 

   xpType = "crafting_weapons_general", 
   xp = 230, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "powerhandler", "barrel", "coil_rifle_dc15", "scope", "stock"},
   ingredientSlotType = {0, 0, 0, 1, 1, 1, 3, 3},
   resourceTypes = {"iron_kammris", "aluminum_linksteel", "petrochem_inert_polymer", "object/tangible/component/weapon/shared_blaster_power_handler.iff", "object/tangible/component/weapon/shared_blaster_rifle_barrel.iff", "object/tangible/component/weapon/shared_coil_rifle_dc15.iff", "object/tangible/component/weapon/shared_scope_weapon.iff", "object/tangible/component/weapon/shared_stock.iff"},
   resourceQuantities = {130, 70, 28, 10, 1, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100},
   ingredientAppearance = {"", "", "", "", "", "coil", "scope", "stock"},

   targetTemplate = "object/weapon/ranged/rifle/ep3/rifle_dc15.iff",

   additionalTemplates = { }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_rifle_dc15_elite, "object/draft_schematic/weapon/rifle_dc15_elite.iff")
