local M = {}

local highlights = require "custom.highlights"

M.ui = {
  hl_add = highlights.add,
  hl_override = highlights.override,

  theme = "gatekeeper",
  transparency = true,

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
    -- buttons = {
    --   { "  New file", "Spc n", "<cmd>ene <bar> startinsert<cr>" },
    --   { "  Recent Files", "Spc f r", "Telescope oldfiles" },
    --   { "  Find file", "Spc f f", "Telescope find_files" },
    --   { "  Find Word", "Spc f w", "Telescope live_grep" },
    --   { "  Bookmarks", "Spc f b", "Telescope marks" },
    --   { "  Find project", "Spc p", "<cmd>Telescope projects<cr>" },
    --   { "  Open file explorer", "Spc e", "NvimTreeToggle" },
    --   { "  Themes", "Spc t h", "Telescope themes" },
    --   { "  Mappings", "Spc c h", "NvCheatsheet" },
    --   { "  Configuration", "Spc c", "<cmd>edit $MYVIMRC<cr>" },
    --   { "  Quit Neovim", "Spc q", "<cmd>q!<cr>" },
    -- },
  },
}

M.mappings = require "custom.mappings"

M.lazy_nvim = require "custom.lazy_nvim"

M.plugins = "custom.plugins"

return M
