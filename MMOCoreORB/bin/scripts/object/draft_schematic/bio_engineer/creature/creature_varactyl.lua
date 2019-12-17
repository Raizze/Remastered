object_draft_schematic_bio_engineer_creature_creature_varactyl = object_draft_schematic_bio_engineer_creature_shared_creature_varactyl:new {

   templateType = DRAFTSCHEMATIC,
   factoryCrateSize = 0,

   customObjectName = "Varactyl",

   craftingToolTab = 256, -- (See DraftSchematicObjectTemplate.h)
   complexity = 20, 
   size = 1, 

   xpType = "crafting_bio_engineer_creature", 
   xp = 150, 

   assemblySkill = "bio_engineer_assembly", 
   experimentingSkill = "bio_engineer_experimentation", 
   customizationSkill = "bio_engineer_experimentation", 

   customizationOptions = {},
   customizationStringNames = {},
   customizationDefaults = {},

   ingredientTemplateNames = {"craft_creature_ingredients_n", "craft_creature_ingredients_n", "craft_creature_ingredients_n"},
   ingredientTitleNames = {"dna_template", "protein_base", "organic_nutrition_materials"},
   ingredientSlotType = {1, 0, 0},
   resourceTypes = {"object/tangible/component/dna/shared_dna_template_generic.iff", "creature_food", "flora_food"},
   resourceQuantities = {1, 55, 65},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/deed/pet_deed/varactyl_deed.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_bio_engineer_creature_creature_varactyl, "object/draft_schematic/bio_engineer/creature/creature_varactyl.iff")