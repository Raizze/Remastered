object_draft_schematic_weapon_unarmed_buzz_knuck = object_draft_schematic_weapon_shared_unarmed_buzz_knuck:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Buzz-Knuck",

   craftingToolTab = 1, -- (See DraftSchematicObjectTemplate.h)
   complexity = 25, 
   size = 2, 

   xpType = "crafting_weapons_general", 
   xp = 65, 

   assemblySkill = "weapon_assembly", 
   experimentingSkill = "weapon_experimentation", 
   customizationSkill = "weapon_customization", 
   factoryCrateSize = 0,
   
   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_weapon_ingredients_n", "craft_item_ingredients_n", "craft_weapon_ingredients_n"},
   ingredientTitleNames = {"grip_unit", "strike_face", "vibro_unit_and_power_cell_brackets", "power_cell_socket", "stun_buzzer", "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 0, 1, 1},
   resourceTypes = {"steel_duranium", "steel", "metal", "copper_platinite", "object/tangible/loot/dungeon/rem_custom/shared_stun_buzzer.iff",  "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {60, 38, 12, 12, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/special/pvp_bf_knuckler.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_unarmed_buzz_knuck, "object/draft_schematic/weapon/unarmed_buzz_knuck.iff")
