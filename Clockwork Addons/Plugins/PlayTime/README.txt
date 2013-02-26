Real-Time recording of a player's playtime.

Logs both global playtime, and character playtime.


Instructions:

To view your playertime, type /playtime.

To see someone's playtime, type /adminplaytime, followed by the player's name. --- This command requires at least operator status.

Suggested Usage:

This can be used to have a better idea of how long has a player played on your server, and on his character, this can have various impacts on the roleplay.

The main way this can impact the roleplay, is not allowing a player to apply until he has played a decent amount of time.

The second way is not allowing an unit who has not played their character enough long, to join a training.

Developers Only

This plugin features three main functions to allow you to develope your own features that require playtime checking

player:PlayTime() -- Returns the global playtime in seconds

player:CharPlayTime() -- Returns the character playtime in seconds, returns false if no character hsa been loaded yet.

ConvertSecondsToMultiples(seconds) -- Returns a table with the Days, the Hours, the Minutes, and the Seconds somebody has played. --- You can understand better how to use this function if you open the plugin file: sv_hooks.lua
