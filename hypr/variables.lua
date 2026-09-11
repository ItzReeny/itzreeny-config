-------------------
---- MY PROGRAMS ----
-------------------

-- Lua files don't share `local` variables across require()'d files, so this
-- returns a table. Any file that needs these does:
--   local vars = require("variables")
--   vars.terminal, vars.mainMod, etc.

local M = {}

M.terminal = "kitty"
M.fileManager = "nautilus"
M.menu = "wofi --show drun"
M.menu_logout = "pkill wlogout || wlogout -b 2 -c 10 -r 10"
M.taskmanager = "flatpak kill net.nokyan.Resources || net.nokyan.Resources"
M.mainMod = "SUPER" -- Sets "Windows" key as main modifier

return M
