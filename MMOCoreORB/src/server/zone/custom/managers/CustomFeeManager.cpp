#include "server/zone/custom/managers/CustomFeeManager.h"

#include <memory>

#include "engine/lua/Lua.h"

CustomFeeManager::CustomFeeManager() {
	setLoggingName("CustomFeeManager");
	setGlobalLogging(true);
	setLogging(true);
}

auto CustomFeeManager::initialize() -> void {
	info("Loading CustomFeeManager config file");

	std::unique_ptr<Lua> lua{new Lua()};
	lua->init();

	lua->runFile("scripts/custom_scripts/managers/custom_fee_manager.lua");

	// Load Color Modify Fee
	modifyColorFee = lua->getGlobalInt("modifyColorFee");
}

auto CustomFeeManager::getModifyColorFee() const -> uint32 {
	return modifyColorFee;
}