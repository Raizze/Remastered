#pragma once
#include "engine/util/Singleton.h"
#include "engine/log/Logger.h"
#include "system/lang/Object.h"

class CustomFeeManager : public Singleton<CustomFeeManager>, public Logger, public Object {
public:
	/**
	 * Ctor / Dtor
	 */
	CustomFeeManager();
	~CustomFeeManager() = default;

	/**
	 * Lua
	 */
	auto initialize() -> void;

	/**
	 * Modify Color
	 */
	auto getModifyColorFee() const -> uint32;

private:
	/**
	 * Modify Color
	 */
	uint32 modifyColorFee{0};
};