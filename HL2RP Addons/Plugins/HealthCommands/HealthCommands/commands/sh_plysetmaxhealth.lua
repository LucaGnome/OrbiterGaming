local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("PlySetMaxHealth")
COMMAND.tip = "Set the Max Health of a specific player."
COMMAND.text = "<string Name> <maxhealthnumber>"
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "o"
COMMAND.arguments = 2

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local target = Clockwork.player:FindByID(arguments[1])
	local health = tonumber(arguments[2])
	
	if (!health or health == "") then
		Clockwork.player:Notify(player, "You have not set a number for health!")
	elseif (target) then
		Clockwork.player:NotifyAll(player:Name().." has set the max health of '"..target:Name().." to "..health..".")
		target:SetMaxHealth(health)
		target:SetHealth(health)
	else
		Clockwork.player:Notify(player, arguments[1].." is not a valid player!")
	end
end;

COMMAND:Register()