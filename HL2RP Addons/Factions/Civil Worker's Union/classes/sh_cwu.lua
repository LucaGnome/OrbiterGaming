--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Civil Worker's Union");
	CLASS.color = Color(150, 125, 100, 255);
	CLASS.factions = {FACTION_CWU};
	CLASS.isDefault = true;
	CLASS.wagesName = "Wages";
	CLASS.description = "A regular human citizen working for the Universal Union.";
	CLASS.defaultPhysDesc = "Wearing dirty clothes.";
CLASS_CWU = CLASS:Register();