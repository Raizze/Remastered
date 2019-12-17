#include "server/zone/objects/tangible/pharmaceutical/EnhancePack.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/managers/skill/SkillModManager.h"
#include "server/zone/objects/building/BuildingObject.h"
#include "server/zone/objects/player/FactionStatus.h"
#include "server/zone/objects/creature/buffs/BuffType.h"

uint32 EnhancePackImplementation::calculatePower(CreatureObject* healer, CreatureObject* patient, bool applyBattleFatigue) {
		float power = getEffectiveness();

		if (applyBattleFatigue)
			power *= patient->calculateBFRatio();

		int droidBuff = healer->getSkillModOfType("private_medical_rating",SkillModManager::DROID);
		int bldBuff = healer->getSkillModOfType("private_medical_rating", SkillModManager::STRUCTURE);
		int mod = healer->getSkillModOfType("private_medical_rating", SkillModManager::CITY);
		mod +=  droidBuff > bldBuff ? droidBuff : bldBuff;

		int factionPerk = healer->getSkillMod("private_faction_medical_rating");

		ManagedReference<BuildingObject*> building = cast<BuildingObject*>(healer->getRootParent());

		if (building != nullptr && factionPerk > 0 && building->isPlayerRegisteredWithin(healer->getObjectID())) {
			unsigned int buildingFaction = building->getFaction();
			unsigned int healerFaction = healer->getFaction();

			if (healerFaction != 0 && healerFaction == buildingFaction && healer->getFactionStatus() == FactionStatus::OVERT) {
				mod += factionPerk;
			}
		}

		float modEnvironment = ((float) mod / 100);
		float modSkill = (float) healer->getSkillMod("healing_wound_treatment");

		return power * modEnvironment * (100 + modSkill) / 100;
}

uint32 EnhancePackImplementation::calculatePower(CreatureObject* healer) {
		float power = getEffectiveness();

		power *= healer->calculateBFRatio();

		int droidBuff = healer->getSkillModOfType("private_medical_rating",SkillModManager::DROID);
		int bldBuff = healer->getSkillModOfType("private_medical_rating", SkillModManager::STRUCTURE);
		int mod = healer->getSkillModOfType("private_medical_rating", SkillModManager::CITY);
		mod +=  droidBuff > bldBuff ? droidBuff : bldBuff;
		if(mod == 0)
			mod = 100;
		
		int factionPerk = healer->getSkillMod("private_faction_medical_rating");

		ManagedReference<BuildingObject*> building = cast<BuildingObject*>(healer->getRootParent());

		if (building != nullptr && factionPerk > 0 && building->isPlayerRegisteredWithin(healer->getObjectID())) {
			unsigned int buildingFaction = building->getFaction();
			unsigned int healerFaction = healer->getFaction();

			if (healerFaction != 0 && healerFaction == buildingFaction && healer->getFactionStatus() == FactionStatus::OVERT) {
				mod += factionPerk;
			}
		}

		float modEnvironment = ((float) mod / 100);
		float modSkill = (float) healer->getSkillMod("healing_wound_treatment");
		if(modSkill <=  60){
			return power * modEnvironment * (100 + modSkill + 75) / 100;	
		} else {
			return power * modEnvironment * (100 + modSkill) / 100;
		}
}

bool EnhancePackImplementation::doEnhanceCharacter(uint32 crc, CreatureObject* player, int amount, int duration, int buffType, uint8 attribute) {
	if (player == nullptr)
		return false;

	ManagedReference<Buff*> buff = new Buff(player, crc, duration, buffType);

	Locker locker(buff);

	buff->setAttributeModifier(attribute, amount);
	player->addBuff(buff);

	return true;
}

void EnhancePackImplementation::enhanceCharacter(CreatureObject* player, int amount, int duration) {
	if (player == nullptr)
		return;

	bool message = true;

	amount = calculatePower(player);

	message = message && doEnhanceCharacter(0x98321369, player, amount, duration, BuffType::MEDICAL, 0); // medical_enhance_health
	message = message && doEnhanceCharacter(0x815D85C5, player, amount, duration, BuffType::MEDICAL, 1); // medical_enhance_strength
	message = message && doEnhanceCharacter(0x7F86D2C6, player, amount, duration, BuffType::MEDICAL, 2); // medical_enhance_constitution
	message = message && doEnhanceCharacter(0x4BF616E2, player, amount, duration, BuffType::MEDICAL, 3); // medical_enhance_action
	message = message && doEnhanceCharacter(0x71B5C842, player, amount, duration, BuffType::MEDICAL, 4); // medical_enhance_quickness
	message = message && doEnhanceCharacter(0xED0040D9, player, amount, duration, BuffType::MEDICAL, 5); // medical_enhance_stamina

	return;
}
