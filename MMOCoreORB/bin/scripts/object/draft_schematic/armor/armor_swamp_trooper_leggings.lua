object_draft_schematic_armor_armor_swamp_trooper_leggings = object_draft_schematic_armor_shared_armor_swamp_trooper_leggings:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Swamp Trooper Armor Leggings",

   craftingToolTab = 2, -- (See DraftSchematicObjectTemplate.h)
   complexity = 45, 
   size = 4, 

   xpType = "crafting_clothing_armor", 
   xp = 550, 

   assemblySkill = "armor_assembly", 
   experimentingSkill = "armor_experimentation", 
   customizationSkill = "armor_customization", 
   factoryCrateSize = 0,

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"auxilary_coverage", "body", "liner", "hardware_and_attachments", "binding_and_reinforcement", "padding", "armor", "load_bearing_harness", "reinforcement"},
   ingredientSlotType = {0, 0, 0, 0, 0, 0, 1, 1, 1},
   resourceTypes = {"ore_intrusive", "fuel_petrochem_solid_known", "fiberplast_naboo", "aluminum", "copper_beyrllius", "hide_wooly", "object/tangible/component/armor/shared_armor_segment_composite.iff", "object/tangible/component/clothing/shared_synthetic_cloth.iff", "object/tangible/component/clothing/shared_reinforced_fiber_panels.iff"},
   resourceQuantities = {70, 70, 35, 40, 30, 30, 3, 1, 1},
   contribution = {100, 100, 100, 100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/armor/scout_trooper/armor_swamp_trooper_leggings.iff",



   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_armor_armor_swamp_trooper_leggings, "object/draft_schematic/armor/armor_swamp_trooper_leggings.iff")
