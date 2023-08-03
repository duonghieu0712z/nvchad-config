local M = {}

local highlights = require "custom.highlights"

M.ui = {
  hl_add = highlights.add,
  hl_override = highlights.override,

  theme = "gatekeeper",
  transparency = false,
  lsp_semantic_tokens = true,

  telescope = {
    style = "bordered",
  },

  statusline = require "custom.statusline",

  nvdash = {
    load_on_startup = true,
  },
}

M.mappings = require "custom.mappings"

M.lazy_nvim = require "custom.lazy_nvim"

M.plugins = "custom.plugins"

return M
