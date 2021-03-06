skreeg_infant = Creature:new {
	objectName = "@mob/creature_names:skreeg_infant",
	socialGroup = "skreeg",
	faction = "",
	level = 4,
	chanceHit = 0.24,
	damageMin = 40,
	damageMax = 45,
	baseXp = 85,
	baseHAM = 113,
	baseHAMmax = 138,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_herbivore",
	meatAmount = 30,
	hideType = "hide_bristley",
	hideAmount = 30,
	boneType = "bone_mammal",
	boneAmount = 23,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/skreeg_infant.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	scale = 0.6,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(skreeg_infant, "skreeg_infant")
