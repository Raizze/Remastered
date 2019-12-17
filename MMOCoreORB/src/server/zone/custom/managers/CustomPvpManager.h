#pragma once
#include "engine/util/Singleton.h"
#include "engine/log/Logger.h"
#include "server/chat/room/ChatRoom.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "system/lang/Object.h"
#include "system/lang/String.h"
#include "system/util/SortedVector.h"
#include "system/util/HashTable.h"
#include "templates/faction/Factions.h"

class CustomPvpManager : public Singleton<CustomPvpManager>, public Logger, public Object {
public:
	/**
	 * Ctor / Dtor
	 */
	 CustomPvpManager();
	 ~CustomPvpManager() = default;

	/**
	 * Lua
	 */
	auto initialize() -> void;

	/**
	 * Frs Methods
	 */
	auto isValidFrsMember(CreatureObject& player) const -> bool;
	auto isValidFrsTarget(CreatureObject& player) const -> bool;

	/**
	 * Chat Methods
	 */
	auto broadcastPvpKill(ChatRoom& chatRoom,
						  CreatureObject& killer,
						  CreatureObject& victim) const -> void;
	auto broadcastPvpGlobal(CreatureObject& killer,
							CreatureObject& victim) const -> void;
	auto broadcastBhKill(CreatureObject& jedi,
						 CreatureObject& bounty) const -> void;
	auto broadcastJediKill(CreatureObject& bounty,
						   CreatureObject& jedi) const -> void;

	/**
	 * PvP Rewards
	 */
	auto getFrsGroupPenalty() const -> float;
	auto grantPvpXp(CreatureObject& killer, const int groupSize) const -> void;
	auto grantJediTrophy(CreatureObject& bountyHunter,
						 CreatureObject& jedi) const -> bool;
	auto grantBountyTrophy(CreatureObject& hunted,
						   CreatureObject& bountyHunter) const -> bool;

	/**
	 * PvP Flair
	 */
	auto playerKillFlair(CreatureObject& player) const -> void;
	auto frsGainedMessage(CreatureObject& player, const int amount) const -> void;

private:
	String frsChatHeader;
	String gcwChatHeader;
	HashTable<int32, String> factionTag;
	String playerKillMessage;
	String gcwKillMessage;
	String duelKillMessage;
	String jediKillMessage;
	String bountyKillMessage;

	SortedVector<String> frsMemberTitles;
	SortedVector<String> frsTargetTitles;

	String jediTrophyName;
	Vector<String> jediTrophies;

	String bountyTrophyName;
	Vector<String> bountyTrophies;

	String playerKillMusic;

	uint32 pvpXp{0};
	uint32 pvpGroupXp{0};
	String pvpXpMessage;

	float frsGroupPenalty{1.0f};
	String frsXpMessage;
};