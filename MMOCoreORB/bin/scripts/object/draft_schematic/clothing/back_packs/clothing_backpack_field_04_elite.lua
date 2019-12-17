object_draft_schematic_clothing_clothing_backpack_field_04_elite = object_draft_schematic_clothing_shared_clothing_backpack_field_04_elite:new {

   templateType = DRAFTSCHEMATIC,

   customObjectName = "Elite Tech Pack",

   craftingToolTab = 8, -- (See DraftSchematicObjectTemplate.h)
   complexity = 23, 
   size = 2, 

   xpType = "crafting_clothing_general", 
   xp = 35, 

   assemblySkill = "clothing_assembly", 
   experimentingSkill = "clothing_experimentation", 
   customizationSkill = "clothing_customization", 
   factoryCrateSize = 0,

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"primary_pocket", "secondary_pocket", "strap_pad", "strap_adjustment"},
   ingredientSlotType = {1, 1, 0, 0},
   resourceTypes = {"object/tangible/component/clothing/shared_cargo_pocket.iff", "object/tangible/component/clothing/shared_cargo_pocket.iff", "hide", "metal"},
   resourceQuantities = {1, 1, 10, 5},
   contribution = {100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/backpack/backpack_s04_elite.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_backpack_field_04_elite, "object/draft_schematic/clothing/clothing_backpack_field_04_elite.iff")
