--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local CLASS = Clockwork.class:New("Enslaved Vortigaunt");
	CLASS.color = Color(170, 0, 255, 255);
	CLASS.wages = 10;
	CLASS.factions = {FACTION_ENSLAVEDVORT};
	CLASS.isDefault = true;
	CLASS.wagesName = "Scraps";
	CLASS.description = "An alien creature who has become stranded on this earth, is now enslaved to the combine.";
	CLASS.defaultPhysDesc = "Three big red eyes and an arm petruding from belly, with something clamped on their crotch.";
CLASS_ENSLAVEDVORTIGAUNT = CLASS:Register();