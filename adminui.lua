--[[---------------------------------------------------------------------------
	
	This script is a plugin module for the ModLoader Admin UI.


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


return t













