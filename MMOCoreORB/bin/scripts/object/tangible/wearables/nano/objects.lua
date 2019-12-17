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

--Boots Vest
object_tangible_wearables_boots_shared_boots_nano = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/wearables/boots/shared_boots_nano.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_wearables_boots_shared_boots_nano, "object/tangible/wearables/boots/shared_boots_nano.iff")

--Nano Vest
object_tangible_wearables_vest_shared_vest_nano = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/wearables/vest/shared_vest_nano.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_wearables_vest_shared_vest_nano, "object/tangible/wearables/vest/shared_vest_nano.iff")

--Nano Head
object_tangible_wearables_hat_shared_hat_covert = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/wearables/hat/shared_hat_covert.iff"

}
ObjectTemplates:addClientTemplate(object_tangible_wearables_hat_shared_hat_covert, "object/tangible/wearables/hat/shared_hat_covert.iff")

--Nano Belt
object_tangible_wearables_belt_shared_belt_nano = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/wearables/belt/shared_belt_nano.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_wearables_belt_shared_belt_nano, "object/tangible/wearables/belt/shared_belt_nano.iff")

--Nano Pants
object_tangible_wearables_pants_shared_pants_nano = SharedTangibleObjectTemplate:new {
	clientTemplateFileName = "object/tangible/wearables/pants/shared_pants_nano.iff"
}
ObjectTemplates:addClientTemplate(object_tangible_wearables_pants_shared_pants_nano, "object/tangible/wearables/pants/shared_pants_nano.iff")
