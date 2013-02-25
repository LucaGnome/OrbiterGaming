--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Vortigaunt");
	CLASS.color = Color(170, 0, 255, 255);
	CLASS.wages = 20;
	CLASS.factions = {FACTION_VORT};
	CLASS.isDefault = true;
	CLASS.wagesName = "Supplies";
	CLASS.description = "An alien creature who has become stranded on this earth.";
	CLASS.defaultPhysDesc = "Three big red eyes and an arm petruding from belly";
CLASS_VORTIGAUNT = CLASS:Register();