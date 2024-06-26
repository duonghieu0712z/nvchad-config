-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

local stl = require "ui.statusline"

---@type ChadrcConfig
local M = {}

M.ui = {
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },

  telescope = {
    style = "bordered",
  },

  theme = "onedark",
  transparency = false,

  nvdash = {
    load_on_startup = true,
  },

  statusline = {
    order = stl.order,
    modules = stl.modules,
  },
}

return M
