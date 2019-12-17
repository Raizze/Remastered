#pragma once
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/tangible/TangibleObject.h"
#include "server/zone/objects/installation/InstallationObject.h"
#include "system/util/SortedVector.h"

class CustomTefManager : public Singleton<CustomTefManager>, public Logger, public Object {
public:
	/**
	 *  Ctor/Dtor
	 */
	CustomTefManager();
	~CustomTefManager() = default;

	// Loads Lua
	auto initialize() -> void;

	/**
	 * CustomTefManager Methods
	 */
	auto enabled() const -> bool;
	auto isPermaOvert(CreatureObject* player) const -> bool;
	auto isPermaOvert(const String& skill) const -> bool;

	/**
	 * Method Overrides
	 */
	// CombatManager.cpp
	auto checkForTefs(CreatureObject* attacker,
					  CreatureObject* defender,
					  bool* shouldGcwTef,
					  bool* shouldBhTef) -> void;

	// QueueCommand.cpp
	auto checkForTef(CreatureObject* healer,
					 CreatureObject* target) -> void;

	// CreatureObjectImplementation.cpp
	auto isAggressiveTo(CreatureObject* defender,
						CreatureObject* attacker) -> bool;

	auto isAttackableBy(CreatureObject* defender,
						TangibleObject* attacker,
						bool bypassDeadCheck) -> bool;

	auto isAttackableBy(CreatureObject* defender,
						CreatureObject* attacker,
						bool bypassDeadCheck) -> bool;

	auto isAttackableByInstallation(InstallationObject* defender,
									CreatureObject* attacker) -> bool;

	auto isHealableBy(CreatureObject* defender,
					  CreatureObject* attacker) -> bool;

	auto notifyGcwTef(CreatureObject* tefPlayer) const -> void;

private:
	bool isEnabled{false};
	bool isGroupTefEnabled{false};
	SortedVector<String> permaOvertSkills{};
	String tefMessage{""};
};