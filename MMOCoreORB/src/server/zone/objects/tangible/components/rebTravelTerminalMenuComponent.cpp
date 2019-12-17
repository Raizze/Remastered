#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/managers/faction/FactionManager.h"
#include "server/zone/Zone.h"
#include "rebTravelTerminalMenuComponent.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/objects/tangible/terminal/Terminal.h"

void rebTravelTerminalMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject,
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
		menuResponse->addRadialMenuItemToRadialID(115, 116, 3, "Rebel Hideout (Corellia)");
		menuResponse->addRadialMenuItemToRadialID(115, 117, 3, "Moenia (Naboo)");
		menuResponse->addRadialMenuItemToRadialID(115, 118, 3, "Anchorhead (Tatooine)");
	menuResponse->addRadialMenuItem(125, 3, "Satellite Worlds");
		menuResponse->addRadialMenuItemToRadialID(125, 126, 3, "Rebel Installation (Talus)");
		menuResponse->addRadialMenuItemToRadialID(125, 127, 3, "Starbird Base (Rori)");
		menuResponse->addRadialMenuItemToRadialID(125, 128, 3, "Rebel Outpost (Rori)");
		menuResponse->addRadialMenuItemToRadialID(125, 129, 3, "Rebel Safehouse (Lok)");
	menuResponse->addRadialMenuItem(135, 3, "Adventure Worlds");
		menuResponse->addRadialMenuItemToRadialID(135, 136, 3, "Abandoned Rebel Base (Dantooine)");
}

int rebTravelTerminalMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject,
		CreatureObject* player, byte selectedID) const {
	if (!sceneObject->isTangibleObject())
		return 0;

	if (!player->isPlayerCreature())
		return 0;
		
	if (player->isIncapacitated())
		return 0;	

	if (player->isDead())
		return 0;			

	if (!player->isRebel()) {
		player->sendSystemMessage("You are not authorized to use this terminal.");
		return 0;
	}
	
	/// Teleport Rebels to their location of choice
	switch(selectedID) {
	case 115: //Core Worlds
		break; 
	case 125: //Satellite Worlds
		break;
	case 135: //Adventure Worlds
		break; 
	case 116: //Rebel Hideout (Corellia)
		player->switchZone("corellia", -6522, 0, 6035, 0); 
		return 0;
	case 117: //Moenia (Naboo)
		player->switchZone("naboo", 4731, 4, -4677, 0); 
		return 0;
	case 118: //Anchorhead (Tatooine)
		player->switchZone("tatooine", 48, 0, -5342, 0); 
		return 0;
	case 126: //Rebel Installation (Talus)
		player->switchZone("talus", 2391, 4, -4990, 0); 
		return 0;
	case 127: //Starbird Base (Rori)
		player->switchZone("rori", -5310, 0, 5009, 0); 
		return 0;
	case 128: //Rebel Outpost (Rori)
		player->switchZone("rori", 3691, 0, -6403, 0); 
		return 0;
	case 129: //Rebel Safehouse (Lok)
		player->switchZone("lok", -4766, 0, 3512, 0); 
		return 0;
	case 136: //Abandoned Rebel Base (Dantooine)
		player->switchZone("dantooine", -6817, 3.0, 5508, -90); 
		return 0;

	default:
		return TangibleObjectMenuComponent::handleObjectMenuSelect(sceneObject,
				player, selectedID);
	}

	return 0;
}
