object_tangible_loot_creature_loot_collections_dejarik_table_base = object_tangible_loot_creature_loot_collections_shared_dejarik_table_base:new {

	templateType = LOOTKIT,

	gameObjectType = 8233,
	
	--These are used to determine which components are necessary in the loot kit to finish the item
	collectibleComponents = {"object/tangible/loot/creature_loot/collections/dejarik_ghhhk.iff", "object/tangible/loot/creature_loot/collections/dejarik_grimtaash.iff", "object/tangible/loot/creature_loot/collections/dejarik_houjix.iff", "object/tangible/loot/creature_loot/collections/dejarik_kintan.iff", "object/tangible/loot/creature_loot/collections/dejarik_klorslug.iff", "object/tangible/loot/creature_loot/collections/dejarik_mantellian.iff", "object/tangible/loot/creature_loot/collections/dejarik_monnok.iff", "object/tangible/loot/creature_loot/collections/dejarik_ngok.iff", "object/tangible/loot/creature_loot/collections/dejarik_board.iff",
"object/tangible/loot/creature_loot/collections/dejarik_table_stand.iff",
"object/tangible/loot/creature_loot/collections/dejarik_battery.iff",
"object/tangible/loot/creature_loot/collections/dejarik_holoprojector.iff",
"object/tangible/loot/creature_loot/collections/dejarik_keypad_01.iff",
"object/tangible/loot/creature_loot/collections/dejarik_keypad_02.iff"},
	
	collectibleReward = {"object/tangible/collection/reward/dejarik_table_reward.iff"},

	deleteComponents = 1,

	--These are used to display to the player which components he already added. Same order as above is used
	attributes = {"dejarik_ghhhk","dejarik_grimtaash","dejarik_houjix","dejarik_kintan","dejarik_klorslug","dejarik_mantellian","dejarik_monnok","dejarik_ngok","dejarik_board","dejarik_table_stand","dejarik_battery","dejarik_holoprojector","dejarik_keypad_01","dejarik_keypad_02"}
}

ObjectTemplates:addTemplate(object_tangible_loot_creature_loot_collections_dejarik_table_base, "object/tangible/loot/creature_loot/collections/dejarik_table_base.iff")


