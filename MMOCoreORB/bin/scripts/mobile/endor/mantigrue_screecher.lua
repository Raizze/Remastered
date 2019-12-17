mantigrue_screecher = Creature:new {
	objectName = "@mob/creature_names:mantigrue_screecher",
	socialGroup = "mantigrue",
	faction = "",
	level = 55,
	chanceHit = 0.55,
	damageMin = 420,
	damageMax = 550,
	baseXp = 5281,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {135,135,10,10,10,-1,10,10,-1},
	meatType = "meat_avian",
	meatAmount = 130,
	hideType = "hide_wooly",
	hideAmount = 85,
	boneType = "bone_avian",
	boneAmount = 85,
	milk = 0,
	tamingChance = 0.01,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/mantigrue_night_stalker.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	controlDeviceTemplate = "object/intangible/pet/mantigrue.iff",
	scale = 1.2,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""},
		{"creatureareadisease",""}
	}
}

CreatureTemplates:addCreatureTemplate(mantigrue_screecher, "mantigrue_screecher")
