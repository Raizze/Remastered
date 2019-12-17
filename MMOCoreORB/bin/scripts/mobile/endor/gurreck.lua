gurreck = Creature:new {
	objectName = "@mob/creature_names:gurreck",
	socialGroup = "gurreck",
	faction = "",
	level = 50,
	chanceHit = 0.5,
	damageMin = 395,
	damageMax = 500,
	baseXp = 4825,
	baseHAM = 11000,
	baseHAMmax = 13000,
	armor = 1,
	resists = {130,130,-1,150,150,-1,150,-1,-1},
	meatType = "meat_carnivore",
	meatAmount = 75,
	hideType = "hide_wooly",
	hideAmount = 45,
	boneType = "bone_mammal",
	boneAmount = 40,
	milk = 0,
	tamingChance = 0.25,
	ferocity = 0,
	pvpBitmask = ATTACKABLE,
	creatureBitmask = PACK,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/gurreck_hue.iff"},
	hues = { 0, 1, 2, 3, 7, 12, 17 },
	controlDeviceTemplate = "object/intangible/pet/gurreck_hue.iff",
	scale = 1.15,
	lootGroups = {
	 {
	        groups = {
				{group = "gurreck_trophy", chance = 10000000}
			},
			lootChance = 25000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"posturedownattack",""},
		{"intimidationattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(gurreck, "gurreck")