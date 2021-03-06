--[[
	� 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "UMP45";
	ITEM.cost = 200;
	ITEM.model = "models/weapons/w_smg_ump45.mdl";
	ITEM.weight = 2.5;
	ITEM.access = "V";
	ITEM.classes = {CLASS_EMP, CLASS_EOW};
	ITEM.uniqueID = "rcs_ump";
	ITEM.business = true;
	ITEM.description = "A compact weapon coated in a dark grey.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-2, 5, 4);
ITEM:Register();