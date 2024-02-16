---@type ChadrcConfig 
local M = {}
M.ui = { theme = 'catppuccin' }
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.signcolumn = "number"

return M

