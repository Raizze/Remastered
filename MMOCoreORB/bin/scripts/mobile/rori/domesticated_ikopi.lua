domesticated_ikopi = Creature:new {
	objectName = "@mob/creature_names:ikopi",
	customName = "a domesticated ikopi",
	socialGroup = "ikopi",
	faction = "",
	level = 7,
	chanceHit = 0.26,
	damageMin = 50,
	damageMax = 55,
	baseXp = 147,
	baseHAM = 405,
	baseHAMmax = 495,
	armor = 0,
	resists = {0,0,0,0,0,0,0,-1,-1},
	meatType = "meat_domesticated",
	meatAmount = 125,
	hideType = "hide_bristley",
	hideAmount = 90,
	boneType = "bone_mammal",
	boneAmount = 80,
	milkType = "milk_domesticated",
	milk = 80,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = HERD,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/ikopi_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/ikopi_hue.iff",
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
	}
}

CreatureTemplates:addCreatureTemplate(domesticated_ikopi, "domesticated_ikopi")