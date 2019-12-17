#pragma once

#include "server/zone/custom/managers/CustomFeeManager.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/player/sui/colorbox/SuiColorBox.h"
#include "server/zone/objects/player/sui/callbacks/ColorArmorSuiCallback.h"
#include "server/zone/objects/player/sui/SuiCallback.h"
#include "server/zone/ZoneServer.h"
#include "templates/customization/AssetCustomizationManagerTemplate.h"

class ModifyColorPayFeeSuiCallback : public SuiCallback {
public:
	ModifyColorPayFeeSuiCallback(ZoneServer* serv) : SuiCallback(serv) {}

	auto run(CreatureObject* player,
			 SuiBox* sui,
			 uint32 eventIndex,
			 Vector<UnicodeString>* args) -> void;
	auto modifyColor(SceneObject& sceneObject, CreatureObject& player) const -> bool;
};


auto ModifyColorPayFeeSuiCallback::run(CreatureObject* player,
									   SuiBox* sui,
									   uint32 eventIndex,
									   Vector<UnicodeString>* args) -> void {
	bool cancelPressed = (eventIndex == 1);

	if (!sui->isMessageBox() || cancelPressed) {
		return;
	}
	ManagedReference<SceneObject*> usingObject = sui->getUsingObject().get();
	if (usingObject == nullptr || !usingObject->isWearableObject()) {
		return;
	}

	const uint32 modifyFee = CustomFeeManager::instance()->getModifyColorFee();
	if (player->getTotalCredits() < modifyFee) {
		player->sendSystemMessage("Insufficient Funds: Modify color requires " + String::valueOf(modifyFee) + " credits.");
		return;
	}

	player->subtractTotalCredits(modifyFee);

	modifyColor(*usingObject, *player);
}

auto ModifyColorPayFeeSuiCallback::modifyColor(SceneObject& sceneObject,
											   CreatureObject& player) const -> bool {
	ManagedReference<SceneObject*> parent = sceneObject.getParent().get();

	if (parent == nullptr) {
		return false;
	}

	if (parent->isPlayerCreature()) {
		player.sendSystemMessage("@armor_rehue:equipped");
		return false;
	}

	if (parent->isCellObject()) {
		ManagedReference<SceneObject*> obj = parent->getParent().get();

		if (obj != nullptr && obj->isBuildingObject()) {
			ManagedReference<BuildingObject*> buio = cast<BuildingObject*>(obj.get());

			if (!buio->isOnAdminList(&player)) {
				return false;
			}
		}
	} else {
		if (!sceneObject.isASubChildOf(&player)) {
			return false;
		}
	}

	ZoneServer* server = player.getZoneServer();

	if (server != nullptr) {
		// The color index.
		String appearanceFilename = sceneObject.getObjectTemplate()->getAppearanceFilename();
		VectorMap<String, Reference<CustomizationVariable*> > variables;
		AssetCustomizationManagerTemplate::instance()->getCustomizationVariables(appearanceFilename.hashCode(), variables, false);

		for (int idx = 0; idx < variables.size(); ++idx) {
			String varkey = variables.elementAt(idx).getKey();
			if (varkey.contains("color")) {
				// The Sui Box.
				ManagedReference<SuiColorBox*> cbox = new SuiColorBox(&player, SuiWindowType::COLOR_ARMOR);
				cbox->setCallback(new ColorArmorSuiCallback(server));
				cbox->setColorPalette(varkey); // First one seems to be the frame of it? Skip to 2nd.
				cbox->setUsingObject(&sceneObject);

				// Add to player.
				ManagedReference<PlayerObject*> ghost = player.getPlayerObject();
				ghost->addSuiBox(cbox);
				player.sendMessage(cbox->generateMessage());
			}
		}
	}

	return true;
}