#include "CustomWearableObjectMenuComponent.h"

#include "server/zone/custom/managers/CustomFeeManager.h"
#include "server/zone/custom/objects/player/sui/callbacks/ModifyColorPayFeeSuiCallback.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/player/PlayerObject.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/objects/player/sui/messagebox/SuiMessageBox.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/ZoneServer.h"

auto CustomWearableObjectMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject,
															   ObjectMenuResponse* menuResponse,
															   CreatureObject* player) const -> void {
	if (!sceneObject->isWearableObject()) {
		return;
	}
	ManagedReference<SceneObject*> parent = sceneObject->getParent().get();

	if (parent != nullptr && parent->isCellObject()) {
		ManagedReference<SceneObject*> obj = parent->getParent().get();

		if (obj != nullptr && obj->isBuildingObject()) {
			ManagedReference<BuildingObject*> buio = cast<BuildingObject*>(obj.get());

			if (!buio->isOnAdminList(player)) {
				return;
			}
		}
	} else
	{
		if (!sceneObject->isASubChildOf(player)) {
			return;
		}
	}

	if (!parent->isPlayerCreature()) {
		menuResponse->addRadialMenuItem(MODIFY_COLOR_FEE, 3, "Modify Color");
	}

    WearableObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);
}

int CustomWearableObjectMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject,
															  CreatureObject* player,
															  byte selectedID) const {
	if (sceneObject == nullptr || player == nullptr) {
		return 0;
	}

	if (selectedID == MODIFY_COLOR_FEE && !handleModifyFeeMenuSelect(*sceneObject, *player)) {
		return 0;
	}

	return WearableObjectMenuComponent::handleObjectMenuSelect(sceneObject, player, selectedID);
}

auto CustomWearableObjectMenuComponent::handleModifyFeeMenuSelect(SceneObject& sceneObject,
																  CreatureObject& player) const -> bool {
	ZoneServer* server = player.getZoneServer();
	if (server == nullptr) {
		return false;
	}

	const uint32 modifyFee = CustomFeeManager::instance()->getModifyColorFee();
	ManagedReference<SuiMessageBox*> box = new SuiMessageBox(&player, SuiWindowType::NONE);//SuiWindowType::STRUCTURE_CONSENT_PAY_ACCESS_FEE);
	box->setPromptTitle("Modify Color Fee");
	box->setPromptText("You must pay a fee of " + String::valueOf(modifyFee) + " credits to change item color");
	box->setUsingObject(&sceneObject);
	box->setCallback(new ModifyColorPayFeeSuiCallback(server));

	// Add to player.
	ManagedReference<PlayerObject*> ghost = player.getPlayerObject();
	ghost->addSuiBox(box);
	player.sendMessage(box->generateMessage());

	return true;
}