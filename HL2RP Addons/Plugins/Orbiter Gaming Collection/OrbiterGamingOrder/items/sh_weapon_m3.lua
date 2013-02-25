--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local ITEM = Clockwork.item:New("weapon_base");
	ITEM.name = "M3 Shotgun";
	ITEM.cost = 300;
	ITEM.model = "models/weapons/w_shot_m3super90.mdl";
	ITEM.weight = 4;
	ITEM.classes = {CLASS_EOW};
	ITEM.uniqueID = "rcs_m3";
	ITEM.business = true;
	ITEM.description = "A moderately sized weapon coated in a dull grey.";
	ITEM.isAttachment = true;
	ITEM.hasFlashlight = true;
	ITEM.loweredOrigin = Vector(3, 0, -4);
	ITEM.loweredAngles = Angle(0, 45, 0);
	ITEM.attachmentBone = "ValveBiped.Bip01_Spine";
	ITEM.attachmentOffsetAngles = Angle(0, 0, 0);
	ITEM.attachmentOffsetVector = Vector(-4, 4, 4);
ITEM:Register();