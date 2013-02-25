local Clockwork = Clockwork;

local COMMAND = Clockwork.command:New("PlyGetMaxHealth")
COMMAND.tip = "Find out the Max Health of a specific player."
COMMAND.text = "<string Name>"
COMMAND.flags = CMD_DEFAULT
COMMAND.access = "o"
COMMAND.arguments = 1

-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local target = Clockwork.player:FindByID(arguments[1])
	local health = target:GetMaxHealth()
	
	if (target) then
		Clockwork.player:Notify(player, "The max health of "..target:Name().." is "..health..".")
	else
		Clockwork.player:Notify(player, arguments[1].." is not a valid player!")
	end
end;

COMMAND:Register()