choku_packmaster = Creature:new {
	objectName = "@mob/creature_names:choku_packmaster",
	socialGroup = "choku",
	faction = "",
	level = 21,
	chanceHit = 0.34,
	damageMin = 170,
	damageMax = 180,
	baseXp = 1803,
	baseHAM = 5900,
	baseHAMmax = 7200,
	armor = 0,
	resists = {110,10,10,10,10,10,10,-1,-1},
	meatType = "meat_avian",
	meatAmount = 65,
	hideType = "hide_bristley",
	hideAmount = 35,
	boneType = "bone_avian",
	boneAmount = 30,
	milk = 0,
	tamingChance = 0.05,
	ferocity = 0,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,

	templates = {"object/mobile/choku_hue.iff"},
	hues = { 0, 1, 2, 3, 4, 5, 6, 7 },
	controlDeviceTemplate = "object/intangible/pet/choku_hue.iff",
	scale = 1.25,
	lootGroups = {
	 {
	        groups = {
				{group = "choku_trophy", chance = 10000000}
			},
			lootChance = 25000
		}
	},
	weapons = {},
	conversationTemplate = "",
	attacks = {
		{"stunattack",""}
	}
}

CreatureTemplates:addCreatureTemplate(choku_packmaster, "choku_packmaster")
