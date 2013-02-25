--[[
	© 2012 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

local FACTION = Clockwork.faction:New("Enslaved Vortigaunt");

FACTION.useFullName = true;
FACTION.whitelist = true;
FACTION.material = "halfliferp/factions/vortigaunt";
FACTION.models = {
	female = {
		"models/vortigaunt_slave.mdl",
	},
	male = {
		"models/vortigaunt_slave.mdl",
	};
};

-- Called when a player is transferred to the faction.
function FACTION:OnTransferred(player, faction, name)
	if (faction.name != FACTION_CITIZEN) then
		return false;
	end;
end;

FACTION_ENSLAVEDVORT = FACTION:Register();