local COMMAND = Clockwork.command:New("Roll");
COMMAND.tip = "Roll a number between 0 and 100."

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local gain = 0
	local faction = (player:GetFaction())
	local weapon = Clockwork.player:GetWeaponClass(player)
	local base = math.random(0, 100)
	local roll = 0


	-- Checks to see if the player faction is MPF, if it is then move onto the next line.
	if (faction == FACTION_MPF) then
		if (Schema:IsPlayerCombineRank(player, "04")) then -- If the players rank is 04 then give him a gain of 5.
			gain = gain + 5
  		elseif (Schema:IsPlayerCombineRank(player, "03")) then -- If players rank is 03 then give him gain of 10
  			gain = gain + 10
  		elseif (Schema:IsPlayerCombineRank(player, "RCT")) then -- If players rank is RCT then don't give him any gain.
  			gain = gain
  		elseif (Schema:IsPlayerCombineRank(player, "02")) then -- If players rank is 02 then give him gain of 17.
  			gain = gain + 17
  		elseif (Schema:IsPlayerCombineRank(player, "01")) then -- If player is 01 then give him a gain of 20
  			gain = gain + 20
  		elseif (Schema:IsPlayerCombineRank(player, "OfC")) then -- If player is OfC then give him a gain of 25.
  			gain = gain + 25
  		elseif (Schema:IsPlayerCombineRank(player, "EpU")) then -- If player is EpU then give him a gain of 30. ## FEEL FREE TO EDIT THESE VALUES FOR YOUR OWN SERVERS PURPOSE. WARNING: DO NOT EDIT ANYTHING BUT THE NUMBER E.G "30" DO NOT TOUCH THE "gain"
  			gain = gain + 30
		elseif (Schema:IsPlayerCombineRank(player, "SeC")) then -- Currently SeC and DvL will roll 30 for some reason. I figured it might have something to do with the EpU line.
			gain = gain + 40
		elseif (Schema:IsPlayerCombineRank(player, "DvL")) then
			gain = gain + 35
		else 
			gain = gain + 7
		end
			
	end

	-- If players faction is OTA then give him one of these gains.
	if (faction == FACTION_OTA) then
		if (Schema:IsPlayerCombineRank(player, "OWS")) then -- If players rank is OWS, then give him a gain of 40
			gain = gain + 40
		elseif (Schema:IsPlayerCombineRank(player, "EOW")) then -- If players rank is EOW then give him gain of 50
			gain = gain + 50
		else 
			gain = gain + 40	
		end
	end

	-- If players faction is CWU then give him gain of 5.
	if (faction == FACTION_CWU) then
		gain = gain + 5	
	end

	-- This should be pretty self explanatory if you followed the rest. This adds a gain based on the weapon EQUIPPED.
	if (weapon == "weapon_pistol") then
		gain = gain + 10	
	elseif (weapon == "weapon_357") then
		gain = gain + 15
	elseif (weapon == "weapon_smg1") then
		gain = gain + 15
	elseif (weapon == "weapon_shotgun") then
		gain = gain + 25
	elseif (weapon == "weapon_ar2") then
		gain = gain + 30
	elseif (weapon == "weapon_crossbow") then
		gain = gain + 30
	elseif (weapon == "weapon_crowbar") or (weapon == "cw_stunstick") then
		gain = gain + 5
	end	

	-- Again hopefully pretty self explanatory. Based on your attributes what gain you would get.
	if Clockwork.attributes:Get(player, ATB_STRENGTH) > 10 then
		gain = gain + 10
	end
	
	if Clockwork.attributes:Get(player, ATB_ACROBATICS) > 10 then
		gain = gain + 5
	end

	if Clockwork.attributes:Get(player, ATB_AGILITY) > 10 then
		gain = gain + 5
	end

	if Clockwork.attributes:Get(player, ATB_DEXTERITY) > 10 then
		gain = gain + 5
	end

	if Clockwork.attributes:Get(player, ATB_ENDURANCE) > 10 then
		gain = gain + 5
	end

	if Clockwork.attributes:Get(player, ATB_MEDICAL) > 10 then
		gain = gain + 5
	end

	roll = base + gain

	-- Makes sure the roll doesn't go over 100
	if roll > 100 then
		roll = 100
	end
	-- Notifys the player of the roll and their gain.
	Clockwork.chatBox:AddInRadius(player, "roll", "has rolled "..roll.." out of 100.", player:GetPos(), Clockwork.config:Get("talk_radius"):Get());
	Clockwork.chatBox:AddInRadius(player, "roll", "has a gain of "..gain, player:GetPos(), Clockwork.config:Get("talk_radius"):Get());

end;

COMMAND:Register();
