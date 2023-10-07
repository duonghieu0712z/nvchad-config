local hooks = require "ibl.hooks"

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  local set_hl = vim.api.nvim_set_hl
  set_hl(0, "IblIndent1", { fg = "#ff8888" })
  set_hl(0, "IblIndent2", { fg = "#88ffff" })
  set_hl(0, "IblIndent3", { fg = "#88ff88" })
  set_hl(0, "IblIndent4", { fg = "#ff88ff" })
  set_hl(0, "IblIndent5", { fg = "#8888ff" })
  set_hl(0, "IblIndent6", { fg = "#ffff88" })
  set_hl(0, "IblScope", { fg = "#8a2be2" })
end)

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

local highlight = {}
for i = 1, 6 do
  table.insert(highlight, "IblIndent" .. i)
end

vim.g.rainbow_delimiters = { highlight = highlight }

require("ibl").setup {
  enabled = true,

  indent = {
    char = "▏",
    highlight = highlight,
    smart_indent_cap = true,
  },

  whitespace = {
    remove_blankline_trail = true,
  },

  scope = {
    enabled = true,
    char = "▏",
    show_start = true,
    show_end = true,
    injected_languages = true,
  },

  exclude = {
    filetypes = { "" },
    buftypes = { "nofile", "help", "quickfix", "terminal", "prompt" },
  },
}
