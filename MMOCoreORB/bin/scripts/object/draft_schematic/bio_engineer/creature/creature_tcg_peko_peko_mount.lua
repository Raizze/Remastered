object_draft_schematic_bio_engineer_creature_creature_tcg_peko_peko_mount = object_draft_schematic_bio_engineer_creature_shared_creature_tcg_peko_peko_mount:new {

   templateType = DRAFTSCHEMATIC,
   factoryCrateSize = 0,	

   customObjectName = "Toxic Peko Peko Mount",

   craftingToolTab = 256, -- (See DraftSchematicObjectTemplate.h)
   complexity = 26, 
   size = 1, 

   xpType = "crafting_bio_engineer_creature", 
   xp = 240, 

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
   resourceQuantities = {1, 65, 60},
   contribution = {100, 100, 100},


   targetTemplate = "object/tangible/tcg/series4/mount_deed_peko_peko.iff",

   additionalTemplates = {
             }

}
ObjectTemplates:addTemplate(object_draft_schematic_bio_engineer_creature_creature_tcg_peko_peko_mount, "object/draft_schematic/bio_engineer/creature/creature_tcg_peko_peko_mount.iff")
