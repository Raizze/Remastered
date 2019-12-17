#pragma once
// Core3
#include "engine/util/Singleton.h"
#include "engine/log/Logger.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "system/lang/Object.h"
#include "system/util/HashTable.h"

// STL
#include <functional>
#include <unordered_map>

class CustomGrantManager : public Singleton<CustomGrantManager>, public Logger, public Object {
public:
	/**
	 * Ctor / Dtor
	 */
	CustomGrantManager();
	~CustomGrantManager() = default;

	auto grantOverride(CreatureObject& player, const String& argument) const -> bool;
};