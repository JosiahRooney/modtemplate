--[[---------------------------------------------------------------------------
	
	This script is a plugin module for the ModLoader Admin UI.

	Select from a list of online players and give them a cargo shield module or
	a dangerous goods permit.

--]]---------------------------------------------------------------------------

-- Include Files
package.path = package.path .. ";data/scripts/mods/?.lua"
local Config = require ("modtemplate/config")

package.path = package.path .. ";data/scripts/lib/?.lua"
require ("utility")
require ("goods")
require ("randomext")


-- Local variables
local t = {}
local container


-- Functions
t.initUI = function(parent)
	container = parent
    local size = container.size
	
	local aLabel = container:createLabel(vec2(100, 100), Config.adminUITest, 22)
end

t.onShowWindow = function()

end

function getOnlinePlayerList()
	if onServer() then
		local playerNames = {Galaxy():getOnlinePlayerNames()}
		invokeClientFunction(Player(callingPlayer), "setOnlinePlayerList", playerNames)
	end
end

-- This is to prevent errors with UI elements that require a function when something
-- is selected/changed etc but that function isn't being used by this script.
function dummy() end

return t













