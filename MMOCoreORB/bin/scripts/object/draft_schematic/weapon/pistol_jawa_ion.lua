object_draft_schematic_weapon_pistol_jawa_ion = object_draft_schematic_weapon_shared_pistol_jawa_ion:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Jawa Ion Pistol",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 22, 
   size = 3, 

   xpType = "crafting_weapons_general", 
   xp = 100, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"frame_assembly", "receiver_assembly", "grip_assembly", "cartridge_feed_unit", "muzzle_pistol_jawa_ion", "scope"},
   ingredientSlotType = {0, 0, 0, 1, 1, 3},
   resourceTypes = {"aluminum_linksteel", "copper_platinite", "petrochem_inert_polymer", "object/tangible/component/weapon/shared_projectile_feed_mechanism.iff", "object/tangible/loot/dungeon/rem_custom/shared_muzzle_pistol_jawa_ion.iff", "object/tangible/component/weapon/shared_scope_weapon.iff"},
   resourceQuantities = {85, 40, 28, 1, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},

   targetTemplate = "object/weapon/ranged/pistol/pistol_jawa.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_pistol_jawa_ion, "object/draft_schematic/weapon/pistol_jawa_ion.iff")