local hooks = require "ibl.hooks"

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  local set_hl = vim.api.nvim_set_hl

  -- Indent colors
  set_hl(0, "IblIndent1", { fg = "#ff8888" })
  set_hl(0, "IblIndent2", { fg = "#88ffff" })
  set_hl(0, "IblIndent3", { fg = "#88ff88" })
  set_hl(0, "IblIndent4", { fg = "#ff88ff" })
  set_hl(0, "IblIndent5", { fg = "#8888ff" })
  set_hl(0, "IblIndent6", { fg = "#ffff88" })

  set_hl(0, "IblScope", { fg = "#8a2be2" })

  -- Rainbow colors
  set_hl(0, "RainbowRed", { fg = "#e06c75" })
  set_hl(0, "RainbowYellow", { fg = "#e5c07b" })
  set_hl(0, "RainbowBlue", { fg = "#61afef" })
  set_hl(0, "RainbowOrange", { fg = "#d19a66" })
  set_hl(0, "RainbowGreen", { fg = "#98c379" })
  set_hl(0, "RainbowViolet", { fg = "#c678dd" })
  set_hl(0, "RainbowCyan", { fg = "#56b6c2" })
end)

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

local indent_highlight = {}
for i = 1, 6 do
  table.insert(indent_highlight, "IblIndent" .. i)
end

local rainbow_highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

vim.g.rainbow_delimiters = { highlight = rainbow_highlight }

require("ibl").setup {
  enabled = true,

  indent = {
    char = "▏",
    highlight = indent_highlight,
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
    show_exact_scope = false,
    injected_languages = true,
  },

  exclude = {
    filetypes = { "" },
    buftypes = { "nofile", "help", "quickfix", "terminal", "prompt" },
  },
}
