domesticated_female_tybis = Creature:new {
	objectName = "@mob/creature_names:tybis",
	customName = "a domesticated female tybis",
	socialGroup = "tybis",
	faction = "",
	level = 20,
	chanceHit = 0.33,
	damageMin = 200,
	damageMax = 210,
	baseXp = 1609,
	baseHAM = 4500,
	baseHAMmax = 5500,
	armor = 0,
	resists = {115,120,-1,125,-1,-1,-1,-1,-1},
	meatType = "meat_domesticated",
	meatAmount = 180,
	hideType = "hide_bristley",
	hideAmount = 130,
	boneType = "bone_mammal",
	boneAmount = 85,
	milkType = "milk_domesticated",
	milk = 80,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/tybis_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(domesticated_female_tybis, "domesticated_female_tybis")
