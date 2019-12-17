/*
				Copyright <SWGEmu>
		See file COPYING for copying conditions.*/

#include "server/zone/objects/tangible/component/genetic/GeneticComponent.h"
#include "templates/tangible/SharedWeaponObjectTemplate.h"

void GeneticComponentImplementation::initializeTransientMembers() {
	ComponentImplementation::initializeTransientMembers();
}

void GeneticComponentImplementation::resetResists(CraftingValues* values) {
	if (stunResist > 0 && !isSpecialResist(SharedWeaponObjectTemplate::STUN)) {
		stunResist = 0;
		values->setCurrentValue("dna_comp_armor_stun", 0);
		values->setCurrentPercentage("dna_comp_armor_stun",0);
	}
	if (kinResist > 0  && !isSpecialResist(SharedWeaponObjectTemplate::KINETIC)) {
		kinResist = 0;
		values->setCurrentValue("dna_comp_armor_kinetic", 0);
		values->setCurrentPercentage("dna_comp_armor_kinetic",0);
	}
	if (saberResist > 0 && !isSpecialResist(SharedWeaponObjectTemplate::LIGHTSABER)) {
		saberResist = 0;
		values->setCurrentValue("dna_comp_armor_saber", 0);
		values->setCurrentPercentage("dna_comp_armor_saber",0);
	}
	if (elecResist > 0 && !isSpecialResist(SharedWeaponObjectTemplate::ELECTRICITY)){
		elecResist = 0;
		values->setCurrentValue("dna_comp_armor_electric", 0);
		values->setCurrentPercentage("dna_comp_armor_electric",0);
	}
	if (acidResist > 0 && !isSpecialResist(SharedWeaponObjectTemplate::ACID)) {
		acidResist = 0;
		values->setCurrentValue("dna_comp_armor_acid", 0);
		values->setCurrentPercentage("dna_comp_armor_acid",0);
	}
	if (coldResist > 0 && !isSpecialResist(SharedWeaponObjectTemplate::COLD)) {
		coldResist = 0;
		values->setCurrentValue("dna_comp_armor_cold", 0);
		values->setCurrentPercentage("dna_comp_armor_cold",0);
	}
	if (heatResist > 0 && !isSpecialResist(SharedWeaponObjectTemplate::HEAT)) {
		heatResist = 0;
		values->setCurrentValue("dna_comp_armor_heat", 0);
		values->setCurrentPercentage("dna_comp_armor_heat",0);
	}
	if (blastResist > 0 && !isSpecialResist(SharedWeaponObjectTemplate::BLAST)) {
		blastResist = 0;
		values->setCurrentValue("dna_comp_armor_blast", 0);
		values->setCurrentPercentage("dna_comp_armor_blast",0);
	}
	if (energyResist > 0 && !isSpecialResist(SharedWeaponObjectTemplate::ENERGY)) {
		energyResist = 0;
		values->setCurrentValue("dna_comp_armor_energy", 0);
		values->setCurrentPercentage("dna_comp_armor_energy",0);
	}
}

void GeneticComponentImplementation::updateCraftingValues(CraftingValues* values, bool firstUpdate) {
	ComponentImplementation::updateCraftingValues(values, firstUpdate);
	fortitude = values->getCurrentValue("fortitude");
	endurance = values->getCurrentValue("endurance");
	cleverness = values->getCurrentValue("cleverness");
	courage = values->getCurrentValue("courage");
	dexterity = values->getCurrentValue("dexterity");
	dependency = values->getCurrentValue("dependability");
	fierceness = values->getCurrentValue("fierceness");
	intelligence = values->getCurrentValue("intellect");
	power = values->getCurrentValue("power");
	hardiness = values->getCurrentValue("hardiness");
	kinResist = values->getCurrentValue("dna_comp_armor_kinetic");
	energyResist = values->getCurrentValue("dna_comp_armor_energy");
	blastResist = values->getCurrentValue("dna_comp_armor_blast");
	heatResist = values->getCurrentValue("dna_comp_armor_heat");
	coldResist = values->getCurrentValue("dna_comp_armor_cold");
	elecResist = values->getCurrentValue("dna_comp_armor_electric");
	acidResist = values->getCurrentValue("dna_comp_armor_acid");
	stunResist = values->getCurrentValue("dna_comp_armor_stun");
	saberResist = values->getCurrentValue("dna_comp_armor_saber");
	if (values->getCurrentValue("kineticeffectiveness") > 0)
		setSpecialResist(SharedWeaponObjectTemplate::KINETIC);
	if (values->getCurrentValue("blasteffectiveness") > 0)
		setSpecialResist(SharedWeaponObjectTemplate::BLAST);
	if (values->getCurrentValue("energyeffectiveness") > 0)
		setSpecialResist(SharedWeaponObjectTemplate::ENERGY);
	if (values->getCurrentValue("heateffectiveness") > 0)
		setSpecialResist(SharedWeaponObjectTemplate::HEAT);
	if (values->getCurrentValue("coldeffectiveness") > 0)
		setSpecialResist(SharedWeaponObjectTemplate::COLD);
	if (values->getCurrentValue("electricityeffectiveness") > 0)
		setSpecialResist(SharedWeaponObjectTemplate::ELECTRICITY);
	if (values->getCurrentValue("acideffectiveness") > 0)
		setSpecialResist(SharedWeaponObjectTemplate::ACID);
	if (values->getCurrentValue("stuneffectiveness") > 0)
		setSpecialResist(SharedWeaponObjectTemplate::STUN);
	if (values->getCurrentValue("lightsabereffectiveness") > 0)
		setSpecialResist(SharedWeaponObjectTemplate::LIGHTSABER);

	if (fortitude < 250) {
		armorRating = 0;
	} else if (fortitude >= 250 && fortitude < 550) {
		armorRating = 1;
	} else if (fortitude >= 550 && fortitude < 700) {
		armorRating = 2;
	} else if (fortitude >= 700) {
		armorRating = 3;
	} 

	//min - max values
	if (fortitude > 1000) {
		fortitude = 1000;
	}
	if (fortitude < 0)
		fortitude = 1;

	if (endurance > 1000){
		endurance = 1000;
	}
	if (endurance < 0)
		endurance = 1;

	if (cleverness > 1000){
		cleverness = 1000;
	}
	if (cleverness < 0)
		cleverness = 1;

	if (courage > 1000){
		courage = 1000;
	}
	if (courage < 0)
		courage = 1;

	if (dependency > 1000){
		dependency = 1000;
	}
	if (dependency < 0)
		dependency = 1;

	if (dexterity > 1000) {
		dexterity = 1000;
	}
	if (dexterity < 0)
		dexterity = 1;

	if (fierceness > 1000){
		fierceness = 1000;
	}
	if (fierceness < 0)
		fierceness = 1;
	if (hardiness > 1000) {
		hardiness = 1000;
	}
	if (hardiness < 0)
		hardiness = 1;
	if (intelligence > 1000){
		intelligence = 1000;
	}
	if (intelligence < 0)
		intelligence = 1;

	if (power > 1000) {
		power = 1000;
	}
	if (power < 0)
		power = 1;
	// max on resists
	if (kinResist > 80)
		kinResist = 80;
	if (energyResist > 80)
		energyResist = 80;
	if (blastResist > 90)
		blastResist = 90;
	if (heatResist > 90)
		heatResist = 90;
	if (coldResist > 90)
		coldResist = 90;
	if (elecResist > 90)
		elecResist = 90;
	if (acidResist > 90)
		acidResist = 90;
	if (stunResist > 90)
		stunResist = 90;
	if (saberResist > 10)
		saberResist = 10;

	// Determine other factors
	// HAM, attack speed, min/max damage toHit
	// Health: har,dex
	// Constitution: har,fort
	// Action: dex,int
	// Stamina: dex,endurance
	// Mind: int, har
	// Will: int,cle
	// Focus: int, dep
	// Strength: har,dep
	// Quickness: dex,dep

	health = (hardiness * 20)    + (dexterity * 4);
	action = (dexterity * 20)    + (intelligence * 4);
	mind   = (intelligence * 20) + (hardiness * 4);
	stamina = (dexterity*15)     + (endurance * 4);
	willPower = (intelligence * 20) + (cleverness * 4);
	constitution = (hardiness * 20)    + (fortitude * 4);
	focus = (intelligence * 20) + (dependency * 4);
	strength = (hardiness * 20)    + (dependency * 4);
	quickness = (dexterity * 20)    + (dependency * 4);
	hit = 0.19 + (3 * ((float)cleverness/1000.0));
	// dps of pet use to determien min and max value.
	int dps = ceil((ceil(20.0 + (775.0 * ( ((float)power)/1000.0))))/2);
	speed = 2.5-((ceil(((float)courage)/10)*12)/1000);
	maxDam = round(((float)dps * speed) * 2);
	//minDam = round(((float)dps * speed) * 0.5);
  	// round maxDam down to the closest multiple of 5
	maxDam = maxDam - (maxDam % 5);
  	// subtract either 5 or 10 from maxDam to get the minDam
	minDam = maxDam - ((System::random(1) + 1) * 5);
}

String GeneticComponentImplementation::convertSpecialAttack(String &attackName) {
	if (attackName == "defaultattack" || attackName == "")
		return "@combat_effects:none";
	else
		return "@combat_effects:" + attackName;
}

String GeneticComponentImplementation::resistValue(float input){
	if (input < 0) {
		return "Vulnerable";
	} else {
		StringBuffer displayvalue;
		displayvalue << Math::getPrecision(input, 0);
		return displayvalue.toString();
	}
}

void GeneticComponentImplementation::fillAttributeList(AttributeListMessage* alm, CreatureObject* object) {
	TangibleObjectImplementation::fillAttributeList(alm, object);
	switch (quality){
		case 1:
			alm->insertAttribute("dna_comp_quality","@obj_attr_n:dna_comp_very_high");
			break;
		case 2:
			alm->insertAttribute("dna_comp_quality","@obj_attr_n:dna_comp_high");
			break;
		case 3:
			alm->insertAttribute("dna_comp_quality","@obj_attr_n:dna_comp_above_average");
			break;
		case 4:
			alm->insertAttribute("dna_comp_quality","@obj_attr_n:dna_comp_average");
			break;
		case 5:
			alm->insertAttribute("dna_comp_quality","@obj_attr_n:dna_comp_below_average");
			break;
		case 6:
			alm->insertAttribute("dna_comp_quality","@obj_attr_n:dna_comp_low");
			break;
		case 7:
			alm->insertAttribute("dna_comp_quality","@obj_attr_n:dna_comp_very_low");
			break;
		default:
			alm->insertAttribute("dna_comp_quality","Unknown");
			break;
	}

	alm->insertAttribute("dna_comp_hardiness",(int)hardiness);
	alm->insertAttribute("dna_comp_fortitude",(int)fortitude);
	alm->insertAttribute("dna_comp_endurance",(int)endurance);
	alm->insertAttribute("dna_comp_intellect",(int)intelligence);
	alm->insertAttribute("dna_comp_cleverness",(int)cleverness);
	alm->insertAttribute("dna_comp_dependability",(int)dependency);
	alm->insertAttribute("dna_comp_courage",(int)courage);
	alm->insertAttribute("dna_comp_dexterity",(int)dexterity);
	alm->insertAttribute("dna_comp_fierceness",(int)fierceness);
	alm->insertAttribute("dna_comp_power",(int)power);

	if (armorRating == 0)
		alm->insertAttribute("dna_comp_armor_rating","@obj_attr_n:armor_pierce_none");
	else if (armorRating == 1)
		alm->insertAttribute("dna_comp_armor_rating","@obj_attr_n:armor_pierce_light");
	else if (armorRating == 2)
		alm->insertAttribute("dna_comp_armor_rating","@obj_attr_n:armor_pierce_medium");
	else if (armorRating == 3)
		alm->insertAttribute("dna_comp_armor_rating","@obj_attr_n:armor_pierce_heavy");

	// Add resists
	alm->insertAttribute("dna_comp_armor_kinetic",resistValue(kinResist));
	alm->insertAttribute("dna_comp_armor_energy",resistValue(energyResist));
	alm->insertAttribute("dna_comp_armor_blast",resistValue(blastResist));
	alm->insertAttribute("dna_comp_armor_heat",resistValue(heatResist));
	alm->insertAttribute("dna_comp_armor_cold",resistValue(coldResist));
	alm->insertAttribute("dna_comp_armor_electric",resistValue(elecResist));
	alm->insertAttribute("dna_comp_armor_acid",resistValue(acidResist));
	alm->insertAttribute("dna_comp_armor_stun",resistValue(stunResist));
	alm->insertAttribute("dna_comp_armor_saber",resistValue(saberResist));
	alm->insertAttribute("spec_atk_1",convertSpecialAttack(special1));
	alm->insertAttribute("spec_atk_2",convertSpecialAttack(special2));
	alm->insertAttribute("dna_comp_ranged_attack",ranged ? "Yes" : "No");
}

bool GeneticComponentImplementation::isSpecialResist(int type) {
	return specialResists & type;
}

void GeneticComponentImplementation::setSpecialResist(int type) {
	specialResists |= type;
}

int GeneticComponentImplementation::getEffectiveArmor() {
	if (fortitude < 500)
		return fortitude/50;
	if (fortitude > 500)
		return (fortitude-500)/50;
	if (fortitude == 500)
		return 0;
	return fortitude/50;
}
