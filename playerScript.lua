-------------------------------------------------------------------------------
--	modtemplate/playerScript.lua
--
--	This script is attached to the player entity at log in. You can use this
--	script to register callbacks for any events you want to handle.
--
--	This script doesn't have to be named playerScript, you can call it anything
--	as long as you define the name you use in modinfo.lua
--	eg: playerScript = "myscript.lua"
--
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Include Files
-------------------------------------------------------------------------------
package.path = package.path .. ";data/scripts/mods/?.lua"
local Config = require("modtemplate/config")

if not Config.disableMod then
-- Your code should go after the check for disableMod

--package.path = package.path .. ";data/scripts/lib/?.lua"
--require("randomext")


-------------------------------------------------------------------------------
-- Local Variables
-------------------------------------------------------------------------------
--local someValue = {} -- Used as a demo variable for secure/restore. Delete


-------------------------------------------------------------------------------
-- Avorion Default Functions
-------------------------------------------------------------------------------
function initialize()

end

--[[
-- Comment or delete the functions you dont use so the game gets less lag.
function update(timestep)

end

function updateClient(timestep)

end

function updateServer(timestep)

end

function getUpdateInterval()
	return 5
end

function restore(data)
    someValue = data
end

function secure()
    return someValue
end
]]

-------------------------------------------------------------------------------
-- Event Handler Functions
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- Other Functions
-------------------------------------------------------------------------------




else 
	-- disableMod is true
function initialize() terminate() end
end