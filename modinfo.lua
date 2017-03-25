--[[---------------------------------------------------------------------------
	
	This script is mandatory. Mod Loader will look in the folder for this file
	and if it doesn't find modinfo.lua, the mod wont get loaded.
	
	You get two ways to insert your mod into the game; a script that Mod Loader
	will attach to the player for you, or, with a function that is called once
	when the player logs in.

	You can use both methods in a single mod, if you need to.

--]]---------------------------------------------------------------------------

package.path = package.path .. ";data/scripts/mods/?.lua"
local Config = require("modtemplate/config")

local Mod = {}

-- Info for ModLoader
Mod.info = 
{
	name = Config.modName,
	version = Config.modVersion,
	description = Config.modDescription,
	author="infal",
	website="",
	icon=modIcon,
	dependency =
	{
		["Simple Mod Loader"]={ major=1, minor=2, revision=0 }
	},
	playerScript = Config.scriptPlayer,
	onInitialize=nil,
}

Mod.onInitialize = function()
	-- This function can be used to add any code that needs to run once at startup
	-- otherwise the function can just be deleted.
	
	-- Add the admin ui module to the mod loader admin ui
	registerAdminUIModule(Config.modName, Config.scriptAdminUI)
end

return Mod