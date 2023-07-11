local M = {}

local highlights = require "custom.highlights"

M.ui = {
  hl_add = highlights.add,
  hl_override = highlights.override,

  telescope = {
    style = "bordered",
  },

  statusline = {
    theme = "default",
    separator_style = "arrow",
    overriden_modules = nil,
  },

  nvdash = {
    load_on_startup = true,
  },
}

M.mappings = require "custom.mappings"

M.lazy_nvim = require "custom.lazy_nvim"

M.plugins = "custom.plugins"

return M
