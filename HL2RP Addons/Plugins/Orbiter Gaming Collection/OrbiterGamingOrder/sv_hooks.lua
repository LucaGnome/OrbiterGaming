local PLUGIN = PLUGIN;

function PLUGIN:GetPlayerDefaultInventory(player, character, inventory)
	if (character.faction == FACTION_UU) then
		Clockwork.inventory:AddInstance(
			inventory, Clockwork.item:CreateInstance("handheld_radio")
		);
		Clockwork.inventory:RemoveInstance(
            inventory, Clockwork.item:CreateInstance("suitcase")
        );    
					
	elseif (character.faction == FACTION_CMS) then
		Clockwork.inventory:AddInstance(
			inventory, Clockwork.item:CreateInstance("handheld_radio")		
		);
		Clockwork.inventory:AddInstance(
			inventory, Clockwork.item:CreateInstance("medic_uniform")		
		);
		Clockwork.inventory:RemoveInstance(
            inventory, Clockwork.item:CreateInstance("suitcase")
        );    

	end
end	
