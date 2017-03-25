-------------------------------------------------------------------------------
--	This file contains all of the strings and configurable values for the mod
--	and could be edited for language localisation
--
-------------------------------------------------------------------------------

local t = {}

-- Use disableMod if you want to uninstall.
-- At the moment, if the game engine can't find a script that is attached to an
-- object it doesn't work well.
-- Entities like ships seem to be deleted, players seem to be respawned as a different
-- faction and not 'own' any of their existing ships and stations.
-- Set disableMod to true and leave all the files in place. They will simply
-- load and then terminate
t.disableMod = false -- [true/false]


-- Script Files
local dir = "data/scripts/mods/modtemplate/"
t.scriptPlayer = dir .. "playerScript.lua"
t.scriptAdminUI = dir .. "adminui.lua"


-- Basic mod info stuff
t.modName = "Mod Template"
t.modVersion = {major=1, minor=0, revision=0}
t.modDescription="A template for making a mod that is compatible with Simple Mod Loader."


-- Strings
t.adminUITest = "Your mods admin stuff here"

return t