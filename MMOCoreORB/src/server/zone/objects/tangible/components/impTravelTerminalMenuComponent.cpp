#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/managers/faction/FactionManager.h"
#include "server/zone/Zone.h"
#include "impTravelTerminalMenuComponent.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/tangible/terminal/Terminal.h"

void impTravelTerminalMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject,
		ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	if (!sceneObject->isTerminal())
		return;

	Terminal* terminal = cast<Terminal*>(sceneObject);
	if(terminal == nullptr) {
		error("Terminal is null in fillObjectMenuResponse");
		return;
	}
	
	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject,
			menuResponse, player);

	/// Get Ghost
	Reference<PlayerObject*> ghost = player->getSlottedObject("ghost").castTo<PlayerObject*>();
	if (ghost == nullptr) {
		error("PlayerCreature has no ghost: " + String::valueOf(player->getObjectID()));
		return;
	}

	if (!player->isInRange(terminal, 10)) {
		return;
	}

	menuResponse->addRadialMenuItem(115, 3, "Core Worlds");
		menuResponse->addRadialMenuItemToRadialID(115, 116, 3, "Imperial Stronghold (Corellia)");
		menuResponse->addRadialMenuItemToRadialID(115, 117, 3, "Emperor's Retreat (Naboo)");
		menuResponse->addRadialMenuItemToRadialID(115, 118, 3, "Kaadara Outpost (Naboo)");
		menuResponse->addRadialMenuItemToRadialID(115, 119, 3, "Imperial Detachment HQ (Tatooine)");
		menuResponse->addRadialMenuItemToRadialID(115, 120, 3, "Imperial Oasis (Tatooine)");
		menuResponse->addRadialMenuItemToRadialID(115, 121, 3, "Bestine Outpost (Tatooine)");		
	menuResponse->addRadialMenuItem(125, 3, "Satellite Worlds");
		menuResponse->addRadialMenuItemToRadialID(125, 126, 3, "Imperial Outpost (Talus)");
		menuResponse->addRadialMenuItemToRadialID(125, 127, 3, "Imperial Outpost (Rori)");
		menuResponse->addRadialMenuItemToRadialID(125, 128, 3, "Imperial Outpost (Lok)");
	menuResponse->addRadialMenuItem(135, 3, "Adventure Worlds");
		menuResponse->addRadialMenuItemToRadialID(135, 136, 3, "Imperial Outpost (Dantooine)");
		menuResponse->addRadialMenuItemToRadialID(135, 137, 3, "Imperial Prison (Dathomir)");
		menuResponse->addRadialMenuItemToRadialID(135, 138, 3, "Imperial Base (Yavin4)");
}

int impTravelTerminalMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject,
		CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!player->isPlayerCreature())
		return 0;
		
	if (player->isIncapacitated())
		return 0;	

	if (player->isDead())
		return 0;			

	if (!player->isImperial()) {
		player->sendSystemMessage("You are not authorized to use this terminal.");
		return 0;
	}
	
	/// Teleport Imperials to their location of choice
	switch(selectedID) {
	case 115: //Core Worlds
		break; 
	case 125: //Satellite Worlds
		break;
	case 135: //Adventure Worlds
		break; 
	case 116: //Imperial Stronghold (Corellia)
		player->switchZone("corellia", 4629, 0, -5777, 0); 
		return 0;
	case 117: //Emperor's Retreat (Naboo)
		player->switchZone("naboo", 2437.8, 0, -3895.7, 0); 
		return 0;
	case 118: //Kaadara Outpost (Naboo)
		player->switchZone("naboo", 5361, 0, 6443, 0); 
		return 0;
	case 119: //Imperial Detachment HQ (Tatooine)
		player->switchZone("tatooine", -2587, 0, 2079, 0); 
		return 0;
	case 120: //Imperial Oasis (Tatooine)
		player->switchZone("tatooine", -5369, 0, 2748, 0); 
		return 0;
	case 121: //Bestine Outpost (Tatooine)
		player->switchZone("tatooine", -1137, 0, -3893, 0); 
		return 0;
	case 126: //Imperial Outpost (Talus)
		player->switchZone("talus", -2212, 0, 2325, 0); 
		return 0;
	case 127: //Imperial Outpost (Rori)
		player->switchZone("rori", -5573.4, 0, -5620.9, 0); 
		return 0;
	case 128: //Imperial Outpost (Lok)
		player->switchZone("lok", -1934, 0, -3132, 0); 
		return 0;
	case 136: //Imperial Outpost (Dantooine)
		player->switchZone("dantooine", -4214, 3.0, -2363, -90); 
		return 0;
	case 137: //Imperial Prison (Dathomir)
		player->switchZone("dathomir", -6229, 0, 944, 0); 
		return 0;
	case 138: //Imperial Base (Yavin4)
		player->switchZone("yavin4", 4042.2, 3.0, -6228.3, -90); 
		return 0;

	default:
		return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject,
				player, selectedID);
	}

	return 0;
}
