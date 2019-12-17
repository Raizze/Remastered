seething_bol_crusher = Creature:new {
	objectName = "@mob/creature_names:seething_bol_crusher",
	socialGroup = "bol",
	faction = "",
	level = 44,
	chanceHit = 0.44,
	damageMin = 325,
	damageMax = 360,
	baseXp = 4279,
	baseHAM = 9300,
	baseHAMmax = 11300,
	armor = 0,
	resists = {165,145,180,-1,30,30,30,200,-1},
	meatType = "meat_reptilian",
	meatAmount = 180,
	hideType = "hide_leathery",
	hideAmount = 300,
	boneType = "bone_mammal",
	boneAmount = 180,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/seething_bol_crusher.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63 },
	scale = 1.25,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"mediumdisease",""},
		{"dizzyattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(seething_bol_crusher, "seething_bol_crusher")
