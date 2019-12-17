object_draft_schematic_weapon_unarmed_blasterfist = object_draft_schematic_weapon_shared_unarmed_blasterfist:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Blasterfist",

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
   ingredientTitleNames = {"grip_unit", "strike_face", "vibro_unit_and_power_cell_brackets", "power_cell_socket", "blast_controller", "vibration_generator"},
   ingredientSlotType = {0, 0, 0, 0, 1, 1},
   resourceTypes = {"steel_ditanium", "iron", "metal", "copper_polysteel", "object/tangible/loot/dungeon/rem_custom/shared_blast_controller.iff",  "object/tangible/component/weapon/shared_vibro_unit.iff"},
   resourceQuantities = {60, 38, 12, 12, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/weapon/melee/special/blasterfist.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_weapon_unarmed_blasterfist, "object/draft_schematic/weapon/unarmed_blasterfist.iff")
