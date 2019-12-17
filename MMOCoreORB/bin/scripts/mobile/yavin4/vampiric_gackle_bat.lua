vampiric_gackle_bat = Creature:new {
	objectName = "@mob/creature_names:gackle_bat_vampiric",
	socialGroup = "gacklebat",
	faction = "",
	level = 13,
	chanceHit = 0.3,
	damageMin = 120,
	damageMax = 130,
	baseXp = 609,
	baseHAM = 1000,
	baseHAMmax = 1200,
	armor = 0,
	resists = {5,5,5,5,5,5,5,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 35,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_mammal",
	boneAmount = 18,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gackle_bat.iff"},
	controlDeviceTemplate = "object/intangible/pet/gackle_bat_hue.iff",
	scale = 1.05,
	lootGroups = {},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(vampiric_gackle_bat, "vampiric_gackle_bat")
