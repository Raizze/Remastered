domesticated_bordok_stud = Creature:new {
	objectName = "@mob/creature_names:bordok_mare",
	customName = "a domesticated bordok stud",
	socialGroup = "bordok",
	faction = "",
	level = 32,
	chanceHit = 0.37,
	damageMin = 290,
	damageMax = 300,
	baseXp = 3279,
	baseHAM = 8400,
	baseHAMmax = 10200,
	armor = 0,
	resists = {140,120,20,20,20,-1,-1,-1,-1},
	meatType = "meat_domesticated",
	meatAmount = 220,
	hideType = "hide_leathery",
	hideAmount = 160,
	boneType = "bone_mammal",
	boneAmount = 100,
	milk = 0,
	tamingChance = 0,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK + HERD,
	optionsBitmask = AIENABLED,
	diet = HERBIVORE,

	templates = {"object/mobile/bordok_hue.iff"},
	hues = { 8, 9, 10, 11, 12, 13, 14, 15 },
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""},
		{"",""}
	}
}

CreatureTemplates:addCreatureTemplate(domesticated_bordok_stud, "domesticated_bordok_stud")
