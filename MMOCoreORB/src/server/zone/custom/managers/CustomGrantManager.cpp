#include "server/zone/custom/managers/CustomGrantManager.h"

#include "server/zone/managers/frs/FrsManager.h"
#include "server/zone/managers/player/PlayerManager.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/ZoneServer.h"
#include "system/io/StringTokenizer.h"

enum class JediCouncil : int {
	Light = FrsManager::COUNCIL_LIGHT,
	Dark = FrsManager::COUNCIL_DARK,
	None = -1,
};

static auto grantJediMaster(const JediCouncil council, CreatureObject& player) -> bool {
	ZoneServer* zServ = player.getZoneServer();
	PlayerManager* pMan = zServ->getPlayerManager();
	pMan->grantJediMaster(&player, static_cast<int>(council));

	return true;
}

static auto grantJediFrs(const JediCouncil council, CreatureObject& player) -> bool {
	ZoneServer* zServ = player.getZoneServer();
	PlayerManager* pMan = zServ->getPlayerManager();
	pMan->unlockFRSForTesting(&player, static_cast<int>(council));

	return true;
}

static auto grantJediFrsRank(const JediCouncil council, const int rank, CreatureObject& player) -> bool {
	const int councilType = static_cast<int>(council);
	auto zServ = player.getZoneServer();
	auto frsManager = zServ->getFrsManager();

	// Verify player is correct council
	auto playerObject = player.getPlayerObject();
	auto frsData = playerObject->getFrsData();
	if (frsData->getCouncilType() != councilType) {
		player.sendSystemMessage("Granting wrong council type");
		return false;
	}

	// Verify rank exists
	ManagedReference<FrsRank*> rankData = frsManager->getFrsRank(councilType, rank);
	if (!rankData) {
		player.sendSystemMessage("Invalid rank");
		return false;
	}

	// Check for available seats
	Locker locker(rankData);
	const int availableSeats = frsManager->getAvailableRankSlots(rankData) - rankData->getTotalWinners();
	if (availableSeats <= 0) {
		player.sendSystemMessage("Not enough available seats");
		return false;
	}

	// Grant rank
	frsManager->setPlayerRank(&player, rank);
	return true;
}

static auto getNextStringToken(StringTokenizer& tokenizer) -> String {
	if (!tokenizer.hasMoreTokens()) {
		return "";
	}

	String nextToken;
	tokenizer.getStringToken(nextToken);
	return nextToken;
}

static auto stringToCouncil(const String& stringValue) -> JediCouncil {
	const String lower = stringValue.toLowerCase();
	switch(lower.hashCode()) {
		case String::hashCode("light"):
			return JediCouncil::Light;
		case String::hashCode("dark"):
			return JediCouncil::Dark;
		default:
			break;
	}
	return JediCouncil::None;
}

CustomGrantManager::CustomGrantManager() {
	setLoggingName("CustomGrantManager");
	setGlobalLogging(true);
	setLogging(true);
}

auto CustomGrantManager::grantOverride(CreatureObject& player, const String& argument) const -> bool {
	StringTokenizer tokenizer{argument};

	const String command = getNextStringToken(tokenizer).toLowerCase();
	switch(command.hashCode()) {
		case String::hashCode("jedimaster"): {
			// Retrieves council type
			const String councilString = getNextStringToken(tokenizer);
			const JediCouncil council = stringToCouncil(councilString);
			if (council == JediCouncil::None) {
				return false;
			}

			return grantJediMaster(council, player);
		}
		case String::hashCode("jedifrs"): {
			// Retrieves council type
			const String councilString = getNextStringToken(tokenizer);
			const JediCouncil council = stringToCouncil(councilString);
			if (council == JediCouncil::None) {
				return false;
			}

			return grantJediFrs(council, player);
		}
		case String::hashCode("jedirank"): {
			// Retrieves council type
			const String councilString = getNextStringToken(tokenizer);
			const JediCouncil council = stringToCouncil(councilString);
			if (council == JediCouncil::None) {
				return false;
			}

			if (!tokenizer.hasMoreTokens()) {
				return false;
			}
			const int rank = tokenizer.getIntToken();
			if (rank <= 0) {
				return false;
			}

			return grantJediFrsRank(council, rank, player);
		}
		default:
			break;
	}

	return false;
}