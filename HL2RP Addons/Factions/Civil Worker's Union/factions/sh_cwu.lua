--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Civil Worker's Union");

FACTION.isCombineFaction = true;
FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.material = "halfliferp/factions/cwu";
FACTION.models = {
	female = {
		"models/Humans/Group02/Female_02.mdl",
		"models/Humans/Group02/Female_04.mdl",
		"models/Humans/Group02/Female_07.mdl"
	};
	male = {
		"models/Humans/Group02/male_02.mdl",
		"models/Humans/Group02/Male_04.mdl",
		"models/Humans/Group02/male_06.mdl",
		"models/Humans/Group02/male_08.mdl"

	};
};

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (faction.name != FACTION_CITIZEN) then
		return false;
	end;
end;

FACTION_CWU = FACTION:Register();