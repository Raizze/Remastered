--Copyright (C) 2009 <SWGEmu>

--This File is part of Core3.

--This program is free software; you can redistribute
--it and/or modify it under the terms of the GNU Lesser
--General Public License as published by the Free Software
--Foundation; either version 2 of the License,
--or (at your option) any later version.

--This program is distributed in the hope that it will be useful,
--but WITHOUT ANY WARRANTY; without even the implied warranty of
--MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
--See the GNU Lesser General Public License for
--more details.

--You should have received a copy of the GNU Lesser General
--Public License along with this program; if not, write to
--the Free Software Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA

--Linking Engine3 statically or dynamically with other modules
--is making a combined work based on Engine3.
--Thus, the terms and conditions of the GNU Lesser General Public License
--cover the whole combination.

--In addition, as a special exception, the copyright holders of Engine3
--give you permission to combine Engine3 program with free software
--programs or libraries that are released under the GNU LGPL and with
--code included in the standard release of Core3 under the GNU LGPL
--license (or modified versions of such code, with unchanged license).
--You may copy and distribute such a system following the terms of the
--GNU LGPL for Engine3 and the licenses of the other code concerned,
--provided that you include the source code of that other code when
--and as the GNU LGPL requires distribution of source code.

--Note that people who make modified versions of Engine3 are not obligated
--to grant this special exception for their modified versions;
--it is their choice whether to do so. The GNU Lesser General Public License
--gives permission to release a modified version without this exception;
--this exception also makes it possible to release a modified version
--which carries forward this exception.


object_tangible_veteran_reward_shared_antidecay = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_antidecay.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/eqp_tool_datapad.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8197,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 1,
	collisionMaterialBlockFlags = 0,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 2,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@item_d:veteran_reward_antidecay",

	gameObjectType = 8197,

	locationReservationRadius = 0,
	lookAtText = "",

	noBuildRadius = 0,

	objectName = "@item_n:veteran_reward_antidecay",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 3168887145,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/container/base/shared_base_container.iff", "object/tangible/container/base/shared_base_container_volume.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_antidecay, "object/tangible/veteran_reward/shared_antidecay.iff")

object_tangible_veteran_reward_shared_data_terminal_s1 = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_data_terminal_s1.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_imp_data_terminal_s1.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_data_terminal_s1",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_data_terminal_s1",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 4198944772,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_data_terminal_s1, "object/tangible/veteran_reward/shared_data_terminal_s1.iff")

object_tangible_veteran_reward_shared_data_terminal_s2 = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_data_terminal_s2.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_imp_data_terminal_s2.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_data_terminal_s2",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_data_terminal_s2",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 558987411,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_data_terminal_s2, "object/tangible/veteran_reward/shared_data_terminal_s2.iff")

object_tangible_veteran_reward_shared_data_terminal_s3 = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_data_terminal_s3.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_imp_data_terminal_s3.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_data_terminal_s3",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_data_terminal_s3",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1750867742,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_data_terminal_s3, "object/tangible/veteran_reward/shared_data_terminal_s3.iff")

object_tangible_veteran_reward_shared_data_terminal_s4 = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_data_terminal_s4.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_imp_data_terminal_s4.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_data_terminal_s4",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_data_terminal_s4",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2478781450,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_data_terminal_s4, "object/tangible/veteran_reward/shared_data_terminal_s4.iff")

object_tangible_veteran_reward_shared_emote_group_1 = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_emote_group_1.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/eqp_tool_datapad.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 1,
	collisionMaterialBlockFlags = 0,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@item_n:veteran_emotes_1",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "",

	noBuildRadius = 0,

	objectName = "@item_n:veteran_emotes_1",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 3623049861,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_emote_group_1, "object/tangible/veteran_reward/shared_emote_group_1.iff")

object_tangible_veteran_reward_shared_frn_couch_falcon_corner_s01 = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_couch_falcon_corner_s01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_spc_couch_section_corner.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_couch_falcon_corner_s01",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_couch_falcon_corner_s01",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 3759715763,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_couch_falcon_corner_s01, "object/tangible/veteran_reward/shared_frn_couch_falcon_corner_s01.iff")

object_tangible_veteran_reward_shared_frn_couch_falcon_section_s01 = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_couch_falcon_section_s01.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_spc_couch_section.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_couch_falcon_section_s01",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_couch_falcon_section_s01",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2195321088,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_couch_falcon_section_s01, "object/tangible/veteran_reward/shared_frn_couch_falcon_section_s01.iff")

object_tangible_veteran_reward_shared_frn_tech_console_sectional_a = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_tech_console_sectional_a.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_tech_console_sectional_a.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_tech_console_sectional_a",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_tech_console_sectional_a",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1297213500,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_tech_console_sectional_a, "object/tangible/veteran_reward/shared_frn_tech_console_sectional_a.iff")

object_tangible_veteran_reward_shared_frn_tech_console_sectional_b = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_tech_console_sectional_b.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_tech_console_sectional_b.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_tech_console_sectional_b",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_tech_console_sectional_b",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2521186475,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_tech_console_sectional_b, "object/tangible/veteran_reward/shared_frn_tech_console_sectional_b.iff")

object_tangible_veteran_reward_shared_frn_tech_console_sectional_c = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_tech_console_sectional_c.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_tech_console_sectional_c.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_tech_console_sectional_c",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_tech_console_sectional_c",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 3746244390,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_tech_console_sectional_c, "object/tangible/veteran_reward/shared_frn_tech_console_sectional_c.iff")

object_tangible_veteran_reward_shared_frn_tech_console_sectional_d = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_tech_console_sectional_d.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_tech_console_sectional_d.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_tech_console_sectional_d",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_tech_console_sectional_d",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 614992946,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_tech_console_sectional_d, "object/tangible/veteran_reward/shared_frn_tech_console_sectional_d.iff")

object_tangible_veteran_reward_shared_frn_vet_darth_vader_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_darth_vader_toy.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_vet_darth_vader_toy.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_darth_vader_toy",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_darth_vader_toy",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 3960625723,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_darth_vader_toy, "object/tangible/veteran_reward/shared_frn_vet_darth_vader_toy.iff")

object_tangible_veteran_reward_shared_frn_vet_jabba_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_jabba_toy.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_vet_jabba_toy.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_jabba_toy",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_jabba_toy",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 3416831363,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_jabba_toy, "object/tangible/veteran_reward/shared_frn_vet_jabba_toy.iff")

object_tangible_veteran_reward_shared_frn_vet_protocol_droid_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_protocol_droid_toy.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_vet_protocol_droid_toy.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_protocol_droid_toy",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_protocol_droid_toy",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2349778145,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_protocol_droid_toy, "object/tangible/veteran_reward/shared_frn_vet_protocol_droid_toy.iff")

object_tangible_veteran_reward_shared_frn_vet_r2_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_r2_toy.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_vet_r2_toy.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_r2_toy",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_r2_toy",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2578350384,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_r2_toy, "object/tangible/veteran_reward/shared_frn_vet_r2_toy.iff")

object_tangible_veteran_reward_shared_frn_vet_stormtrooper_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_stormtrooper_toy.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_vet_stormtrooper_toy.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_stormtrooper_toy",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_stormtrooper_toy",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1449977976,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_stormtrooper_toy, "object/tangible/veteran_reward/shared_frn_vet_stormtrooper_toy.iff")

object_tangible_veteran_reward_shared_frn_vet_tie_fighter_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_tie_fighter_toy.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_vet_tie_fighter_toy.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_tie_fighter_toy",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_tie_fighter_toy",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 1917299992,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_tie_fighter_toy, "object/tangible/veteran_reward/shared_frn_vet_tie_fighter_toy.iff")

object_tangible_veteran_reward_shared_frn_vet_x_wing_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_x_wing_toy.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/frn_vet_x_wing_toy.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 0,
	collisionMaterialBlockFlags = 1,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@frn_d:vet_x_wing_toy",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "string_id_table",

	noBuildRadius = 0,

	objectName = "@frn_n:vet_x_wing_toy",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "abstract/slot/descriptor/tangible.iff",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 918916770,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff", "object/tangible/base/shared_tangible_craftable.iff", "object/tangible/furniture/base/shared_furniture_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_x_wing_toy, "object/tangible/veteran_reward/shared_frn_vet_x_wing_toy.iff")

object_tangible_veteran_reward_shared_harvester = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_harvester.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/eqp_tool_datapad.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 1,
	collisionMaterialBlockFlags = 0,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@item_d:harvester_no_power",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "",

	noBuildRadius = 0,

	objectName = "@item_n:harvester_no_power",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 4154009202,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_harvester, "object/tangible/veteran_reward/shared_harvester.iff")

object_tangible_veteran_reward_shared_resource = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_resource.iff"
	--Data below here is deprecated and loaded from the tres, keeping for easy lookups
--[[
	appearanceFilename = "appearance/eqp_tool_datapad.apt",
	arrangementDescriptorFilename = "",

	certificationsRequired = {},
	clearFloraRadius = 0,
	clientDataFile = "",
	clientGameObjectType = 8203,
	collisionActionBlockFlags = 0,
	collisionActionFlags = 51,
	collisionActionPassFlags = 1,
	collisionMaterialBlockFlags = 0,
	collisionMaterialFlags = 1,
	collisionMaterialPassFlags = 0,
	containerType = 0,
	containerVolumeLimit = 1,
	customizationVariableMapping = {},

	detailedDescription = "@item_n:free_resource",

	gameObjectType = 8203,

	locationReservationRadius = 0,
	lookAtText = "",

	noBuildRadius = 0,

	objectName = "@item_n:free_resource",
	onlyVisibleInTools = 0,

	paletteColorCustomizationVariables = {},
	portalLayoutFilename = "",

	rangedIntCustomizationVariables = {},

	scale = 1,
	scaleThresholdBeforeExtentTest = 0.5,
	sendToClient = 1,
	slotDescriptorFilename = "",
	snapToTerrain = 1,
	socketDestinations = {},
	structureFootprintFileName = "",
	surfaceType = 0,

	targetable = 1,
	totalCellNumber = 0,

	useStructureFootprintOutline = 0,

	clientObjectCRC = 2099830307,
	derivedFromTemplates = {"object/object/base/shared_base_object.iff", "object/tangible/base/shared_tangible_base.iff"}
]]
}

ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_resource, "object/tangible/veteran_reward/shared_resource.iff")

object_tangible_veteran_reward_shared_frn_vet_painting_april_07 = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_painting_april_07.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_painting_april_07, "object/tangible/veteran_reward/shared_frn_vet_painting_april_07.iff")

object_tangible_veteran_reward_shared_frn_vet_painting_community_summit_s02 = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_painting_community_summit_s02.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_painting_community_summit_s02, "object/tangible/veteran_reward/shared_frn_vet_painting_community_summit_s02.iff")

--Plush Tauntaun
object_tangible_veteran_reward_shared_frn_plush_tauntaun = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_plush_tauntaun.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_plush_tauntaun, "object/tangible/veteran_reward/shared_frn_plush_tauntaun.iff")

--Geonisian in Carbonite
object_tangible_veteran_reward_shared_frn_vet_carbonite_geonosian = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_carbonite_geonosian.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_carbonite_geonosian, "object/tangible/veteran_reward/shared_frn_vet_carbonite_geonosian.iff")

--Gungan in Carbonite
object_tangible_veteran_reward_shared_frn_vet_carbonite_gungan = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_carbonite_gungan.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_carbonite_gungan, "object/tangible/veteran_reward/shared_frn_vet_carbonite_gungan.iff")

--Ugnaught in Carbonite
object_tangible_veteran_reward_shared_frn_vet_carbonite_ugnaught = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_carbonite_ugnaught.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_carbonite_ugnaught, "object/tangible/veteran_reward/shared_frn_vet_carbonite_ugnaught.iff")

--Houseplant 1
object_tangible_veteran_reward_shared_frn_vet_houseplant = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_houseplant.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_houseplant, "object/tangible/veteran_reward/shared_frn_vet_houseplant.iff")

--Houseplant 2
object_tangible_veteran_reward_shared_frn_vet_houseplant_02 = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_houseplant_02.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_houseplant_02, "object/tangible/veteran_reward/shared_frn_vet_houseplant_02.iff")

--Display Stand
object_tangible_veteran_reward_shared_frn_vet_display_stand = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_display_stand.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_display_stand, "object/tangible/veteran_reward/shared_frn_vet_display_stand.iff")

--Emperor's Chair
object_tangible_veteran_reward_shared_frn_vet_emp_chair = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_emp_chair.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_emp_chair, "object/tangible/veteran_reward/shared_frn_vet_emp_chair.iff")

--Goggles
object_tangible_veteran_reward_shared_emperors_day_goggles = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_emperors_day_goggles.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_emperors_day_goggles, "object/tangible/veteran_reward/shared_emperors_day_goggles.iff")

--Imperial Rug
object_tangible_veteran_reward_shared_frn_vet_rug_imperial = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_rug_imperial.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_rug_imperial, "object/tangible/veteran_reward/shared_frn_vet_rug_imperial.iff")

--Rebel Rug
object_tangible_veteran_reward_shared_frn_vet_rug_rebel = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_rug_rebel.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_rug_rebel, "object/tangible/veteran_reward/shared_frn_vet_rug_rebel.iff")

--Darth Maul Statue
object_tangible_veteran_reward_shared_darth_maul_statue = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_darth_maul_statue.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_darth_maul_statue, "object/tangible/veteran_reward/shared_darth_maul_statue.iff")

--AT-AT Toy
object_tangible_veteran_reward_shared_frn_vet_atat_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_atat_toy.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_atat_toy, "object/tangible/veteran_reward/shared_frn_vet_atat_toy.iff")

--Boba Fett Toy
object_tangible_veteran_reward_shared_frn_vet_boba_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_boba_toy.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_boba_toy, "object/tangible/veteran_reward/shared_frn_vet_boba_toy.iff")

--Corvette Holo
object_tangible_veteran_reward_shared_frn_vet_holo_corvette = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_corvette.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_corvette, "object/tangible/veteran_reward/shared_frn_vet_holo_corvette.iff")

--Darth Vader Holo
object_tangible_veteran_reward_shared_frn_vet_holo_darth_vader = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_darth_vader.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_darth_vader, "object/tangible/veteran_reward/shared_frn_vet_holo_darth_vader.iff")

--Death Star Holo
object_tangible_veteran_reward_shared_frn_vet_holo_deathstar = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_deathstar.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_deathstar, "object/tangible/veteran_reward/shared_frn_vet_holo_deathstar.iff")

--Imperial Guard Holo
object_tangible_veteran_reward_shared_frn_vet_holo_imperial_guard = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_imperial_guard.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_imperial_guard, "object/tangible/veteran_reward/shared_frn_vet_holo_imperial_guard.iff")

--Jawa Holo
object_tangible_veteran_reward_shared_frn_vet_holo_jawa = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_jawa.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_jawa, "object/tangible/veteran_reward/shared_frn_vet_holo_jawa.iff")

--Lambda Shuttle Holo
object_tangible_veteran_reward_shared_frn_vet_holo_lambda = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_lambda.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_lambda, "object/tangible/veteran_reward/shared_frn_vet_holo_lambda.iff")

--Leia Holo
object_tangible_veteran_reward_shared_frn_vet_holo_leia = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_leia.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_leia, "object/tangible/veteran_reward/shared_frn_vet_holo_leia.iff")

--Luke Holo
object_tangible_veteran_reward_shared_frn_vet_holo_luke_skywalker = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_luke_skywalker.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_luke_skywalker, "object/tangible/veteran_reward/shared_frn_vet_holo_luke_skywalker.iff")

--Sandcraweler Holo
object_tangible_veteran_reward_shared_frn_vet_holo_sandcrawler = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_sandcrawler.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_sandcrawler, "object/tangible/veteran_reward/shared_frn_vet_holo_sandcrawler.iff")

--Starfighter Holo
object_tangible_veteran_reward_shared_frn_vet_holo_starfighter = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_starfighter.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_starfighter, "object/tangible/veteran_reward/shared_frn_vet_holo_starfighter.iff")

--Yoda Holo
object_tangible_veteran_reward_shared_frn_vet_holo_yoda = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_holo_yoda.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_holo_yoda, "object/tangible/veteran_reward/shared_frn_vet_holo_yoda.iff")

--Salacious Crumb Toy
object_tangible_veteran_reward_shared_frn_vet_salacious_crumb_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_salacious_crumb_toy.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_salacious_crumb_toy, "object/tangible/veteran_reward/shared_frn_vet_salacious_crumb_toy.iff")

--Tusken Raider Toy
object_tangible_veteran_reward_shared_frn_vet_tusken_raider_toy = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_tusken_raider_toy.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_tusken_raider_toy, "object/tangible/veteran_reward/shared_frn_vet_tusken_raider_toy.iff")

--Mace Windu Statue
object_tangible_veteran_reward_shared_mace_windu_statue = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_mace_windu_statue.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_mace_windu_statue, "object/tangible/veteran_reward/shared_mace_windu_statue.iff")

--Jedi Temple Statuette
object_tangible_veteran_reward_shared_frn_vet_jedi_temple = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_jedi_temple.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_jedi_temple, "object/tangible/veteran_reward/shared_frn_vet_jedi_temple.iff")

--Jedi Temple Burning Statuette
object_tangible_veteran_reward_shared_frn_vet_jedi_temple_burning = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_jedi_temple_burning.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_jedi_temple_burning, "object/tangible/veteran_reward/shared_frn_vet_jedi_temple_burning.iff")

--Podracer Statue
object_tangible_veteran_reward_shared_frn_vet_podracer_statue = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/veteran_reward/shared_frn_vet_podracer_statue.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_veteran_reward_shared_frn_vet_podracer_statue, "object/tangible/veteran_reward/shared_frn_vet_podracer_statue.iff")
