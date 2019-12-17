object_draft_schematic_clothing_clothing_pants_nightsister_01 = object_draft_schematic_clothing_shared_clothing_pants_nightsister_01:new {

   templateType = DRAFTSCHEMATIC,

   craftingToolTab = 8, -- (See DraftSchematicObjectTemplate.h)
   complexity = 1,
   size = 4,

   xpType = "crafting_clothing_general",
   xp = 160,

   assemblySkill = "clothing_assembly",
   experimentingSkill = "clothing_experimentation",
   customizationSkill = "clothing_customization",

   customizationOptions = {2, 1},
   customizationStringNames = {"/private/index_color_1", "/private/index_color_2"},
   customizationDefaults = {159, 253},

   ingredientTemplateNames = {"craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n", "craft_clothing_ingredients_n"},
   ingredientTitleNames = {"trim_and_binding", "trim", "rancor_hide", "hardware", "skirt", "bodice"},
   ingredientSlotType = {0, 1, 1, 0, 1, 1},
   resourceTypes = {"bone_mammal_dathomir", "object/tangible/component/clothing/shared_trim.iff", "object/tangible/component/armor/shared_armor_segment_enhancement_rancor.iff", "metal", "object/tangible/component/clothing/shared_synthetic_cloth.iff", "object/tangible/component/clothing/shared_synthetic_cloth.iff"},
   resourceQuantities = {24, 4, 3, 20, 3, 1},
   contribution = {100, 100, 100, 100, 100, 100},


   targetTemplate = "object/tangible/wearables/pants/nightsister_pants_s01.iff",

   additionalTemplates = {
             }

}

ObjectTemplates:addTemplate(object_draft_schematic_clothing_clothing_pants_nightsister_01, "object/draft_schematic/clothing/clothing_pants_nightsister_01.iff")
