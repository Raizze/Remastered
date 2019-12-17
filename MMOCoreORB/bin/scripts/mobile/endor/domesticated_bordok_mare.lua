domesticated_bordok_mare = Creature:new {
	objectName = "@mob/creature_names:bordok_mare",
	customName = "a domesticated bordok mare",
	socialGroup = "bordok",
	faction = "",
	level = 30,
	chanceHit = 0.37,
	damageMin = 270,
	damageMax = 280,
	baseXp = 3005,
	baseHAM = 8200,
	baseHAMmax = 10000,
	armor = 0,
	resists = {130,130,120,20,20,-1,-1,-1,-1},
	meatType = "meat_domesticated",
	meatAmount = 220,
	hideType = "hide_leathery",
	hideAmount = 160,
	boneType = "bone_mammal",
	boneAmount = 100,
	milkType = "milk_domesticated",
	milk = 100,
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
		{"",""},
		{"blindattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(domesticated_bordok_mare, "domesticated_bordok_mare")
