/*
 * FactionManager.cpp
 *
 *  Created on: Mar 17, 2011
 *      Author: crush
 */

#include "FactionManager.h"
#include "FactionMap.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "templates/manager/TemplateManager.h"
#include "server/ServerCore.h"
#include "server/db/ServerDatabase.h"
#include "server/zone/packets/player/PlayMusicMessage.h"
#include "server/chat/ChatManager.h"
#include "server/chat/room/ChatRoom.h"
#include "server/zone/objects/group/GroupObject.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/objects/player/FactionStatus.h"

// Remastered
#include "server/zone/custom/managers/CustomPvpManager.h"

FactionManager::FactionManager() {
	setLoggingName("FactionManager");
	setGlobalLogging(false);
	setLogging(false);
}

void FactionManager::loadData() {
	loadLuaConfig();
	loadFactionRanks();
}

void FactionManager::loadFactionRanks() {
	IffStream* iffStream = TemplateManager::instance()->openIffFile("datatables/faction/rank.iff");

	if (iffStream == nullptr) {
		warning("Faction ranks could not be found.");
		return;
	}

	DataTableIff dtiff;
	dtiff.readObject(iffStream);

	factionRanks.readObject(&dtiff);

	delete iffStream;

	info("loaded " + String::valueOf(factionRanks.getCount()) + " ranks", true);
}

void FactionManager::loadLuaConfig() {
	info("Loading config file.", true);

	FactionMap* fMap = getFactionMap();

	Lua* lua = new Lua();
	lua->init();

	//Load the faction manager lua file.
	lua->runFile("scripts/managers/faction_manager.lua");

	LuaObject luaObject = lua->getGlobalObject("factionList");

	if (luaObject.isValidTable()) {
		for (int i = 1; i <= luaObject.getTableSize(); ++i) {
			LuaObject factionData = luaObject.getObjectAt(i);

			if (factionData.isValidTable()) {
				String factionName = factionData.getStringAt(1);
				bool playerAllowed = factionData.getBooleanAt(2);
				String enemies = factionData.getStringAt(3);
				String allies = factionData.getStringAt(4);
				float adjustFactor = factionData.getFloatAt(5);

				Faction faction(factionName);
				faction.setAdjustFactor(adjustFactor);
				faction.setPlayerAllowed(playerAllowed);
				faction.parseEnemiesFromList(enemies);
				faction.parseAlliesFromList(allies);

				fMap->addFaction(faction);
			}

			factionData.pop();
		}
	}

	luaObject.pop();

	delete lua;
	lua = nullptr;
}

void FactionManager::createGcwRooms(ChatManager* chatManager) {
	ManagedReference<ChatRoom*> pvpRoom = chatManager->getPvpRoom();

	// Imperial
	{
		imperialChat = chatManager->createRoom("Imperial", pvpRoom);
		imperialChat->setPrivate();
		imperialChat->setTitle("Imperial Communications");
		imperialChat->setCanEnter(true);
		imperialChat->setChatRoomType(ChatRoom::PVP);
	}

	// Rebel
	{
		rebelChat = chatManager->createRoom("Rebel", pvpRoom);
		rebelChat->setPrivate();
		rebelChat->setTitle("Rebel Communications");
		rebelChat->setCanEnter(true);
		rebelChat->setChatRoomType(ChatRoom::PVP);
	}

	// Kills
	{
		pvpNotificationChat = chatManager->createRoom("Summary", pvpRoom);
		pvpNotificationChat->setPrivate();
		pvpNotificationChat->setTitle("Summary");
		pvpNotificationChat->setCanEnter(true);
		pvpNotificationChat->setChatRoomType(ChatRoom::PVP);
		pvpNotificationChat->setModerated(true);
	}
}

FactionMap* FactionManager::getFactionMap() {
	return &factionMap;
}

void FactionManager::awardFactionStanding(CreatureObject* player, const String& factionName, int level) {
	if (player == nullptr)
		return;

	ManagedReference<PlayerObject*> ghost = player->getPlayerObject();

	if (!factionMap.contains(factionName))
		return;

	const Faction& faction = factionMap.get(factionName);
	const SortedVector<String>* enemies = faction.getEnemies();
	const SortedVector<String>* allies = faction.getAllies();

	if (!faction.isPlayerAllowed())
		return;

	float gain = level * faction.getAdjustFactor();
	float lose = gain * 2;

	ghost->decreaseFactionStanding(factionName, lose);

	//Lose faction standing to allies of the creature.
	for (int i = 0; i < allies->size(); ++i) {
		const String& ally = allies->get(i);

		if ((ally == "rebel" || ally == "imperial")) {
			continue;
		}

		if (!factionMap.contains(ally))
			continue;

		const Faction& allyFaction = factionMap.get(ally);

		if (!allyFaction.isPlayerAllowed())
			continue;

		ghost->decreaseFactionStanding(ally, lose);
	}

	bool gcw = false;
	if (factionName == "rebel" || factionName == "imperial") {
		gcw = true;
	}

	//Gain faction standing to enemies of the creature.
	for (int i = 0; i < enemies->size(); ++i) {
		const String& enemy = enemies->get(i);

		if ((enemy == "rebel" || enemy == "imperial") && !gcw) {
			continue;
		}

		if (!factionMap.contains(enemy))
			continue;

		const Faction& enemyFaction = factionMap.get(enemy);

		if (!enemyFaction.isPlayerAllowed())
			continue;

		ghost->increaseFactionStanding(enemy, gain);
	}
}


void FactionManager::awardPvpFactionPoints(TangibleObject* killer, CreatureObject* destructedObject) {
	if (killer->isPlayerCreature() && destructedObject->isPlayerCreature()) {
		CreatureObject* killerCreature = cast<CreatureObject*>(killer);

		const CustomPvpManager* const pvpManager = CustomPvpManager::instance();
		pvpManager->broadcastPvpKill(*pvpNotificationChat,
									 *killerCreature,
									 *destructedObject);

		// Faction gain
		ManagedReference<PlayerObject*> ghost = killerCreature->getPlayerObject();
		ManagedReference<PlayerObject*> killedGhost = destructedObject->getPlayerObject();
		if (killer->isRebel() && destructedObject->isImperial()) {
			ghost->increaseFactionStanding("rebel", 30);
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/mus_rebel_win.snd");
			killer->sendMessage(pmm);
			killer->playEffect("clienteffect/holoemote_rebel.cef", "head");
			ghost->decreaseFactionStanding("imperial", 45);
			killedGhost->decreaseFactionStanding("imperial", 45);

		} else if (killer->isImperial() && destructedObject->isRebel()) {
			ghost->increaseFactionStanding("imperial", 30);
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/mus_imperial_win.snd");
			killer->sendMessage(pmm);
			killer->playEffect("clienteffect/holoemote_imperial.cef", "head");
			ghost->decreaseFactionStanding("rebel", 45);
			killedGhost->decreaseFactionStanding("rebel", 45);

		} else if (killer->isImperial() && destructedObject->isImperial()) {
			killer->playEffect("clienteffect/holoemote_sparky.cef", "head");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_combat_victory.snd");
			killer->sendMessage(pmm);
			ghost->decreaseFactionStanding("imperial", 100);

		} else if (killer->isRebel() && destructedObject->isRebel()) {
			killer->playEffect("clienteffect/holoemote_sparky.cef", "head");
			PlayMusicMessage* pmm = new PlayMusicMessage("sound/music_combat_victory.snd");
			killer->sendMessage(pmm);
			ghost->decreaseFactionStanding("rebel", 100);
		}
	}
}

String FactionManager::getRankName(int idx) {
	if (idx >= factionRanks.getCount())
		return "";

	return factionRanks.getRank(idx).getName();
}

int FactionManager::getRankCost(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getCost();
}

int FactionManager::getRankDelegateRatioFrom(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getDelegateRatioFrom();
}

int FactionManager::getRankDelegateRatioTo(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return factionRanks.getRank(rank).getDelegateRatioTo();
}

int FactionManager::getFactionPointsCap(int rank) {
	if (rank >= factionRanks.getCount())
		return -1;

	return Math::max(1000, getRankCost(rank) * 20);
}

bool FactionManager::isFaction(const String& faction) {
	if (factionMap.contains(faction))
		return true;

	return false;
}

bool FactionManager::isEnemy(const String& faction1, const String& faction2) {

	if (!factionMap.contains(faction1) || !factionMap.contains(faction2))
		return false;

	Faction* faction = factionMap.getFaction(faction1);

	return faction->getEnemies()->contains(faction2);
}

bool FactionManager::isAlly(const String& faction1, const String& faction2) {

	if (!factionMap.contains(faction1) || !factionMap.contains(faction2))
		return false;

	Faction* faction = factionMap.getFaction(faction1);

	return faction->getAllies()->contains(faction2);
}
