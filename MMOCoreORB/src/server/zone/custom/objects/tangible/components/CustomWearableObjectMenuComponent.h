#pragma once

#include "server/zone/objects/tangible/components/WearableObjectMenuComponent.h"

class CustomWearableObjectMenuComponent : public WearableObjectMenuComponent {
public:
	virtual auto fillObjectMenuResponse(SceneObject* sceneObject,
										ObjectMenuResponse* menuResponse,
										CreatureObject* player) const -> void;

	virtual auto handleObjectMenuSelect(SceneObject* sceneObject,
										CreatureObject* player,
										byte selectedID) const -> int;

private:
	static constexpr uint32 MODIFY_COLOR_FEE = 81;

	auto handleModifyFeeMenuSelect(SceneObject& sceneObject,
								   CreatureObject& player) const -> bool;
};