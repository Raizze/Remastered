object_draft_schematic_weapon_lance_paragon = object_draft_schematic_weapon_shared_lance_paragon:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Acidic Paragon Vibro Axe",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 30, 
   size = 4, 

   xpType = "crafting_weapons_general", 
   xp = 220, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"lance_shaft", "vibro_unit_and_power_cell_brackets", "grip", "axe_head", "acid_distributor", "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 0, 1, 1},
   resourceTypes = {"steel_quadranium", "steel", "metal", "copper", "object/tangible/loot/dungeon/rem_custom/shared_acid_distributor.iff",   "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {85, 24, 12, 8, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/polearm/polearm_heroic_sd.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_lance_paragon, "object/draft_schematic/weapon/lance_paragon.iff")