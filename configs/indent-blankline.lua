local highlight_list = {
  "IndentBlanklineIndent1",
  "IndentBlanklineIndent2",
  "IndentBlanklineIndent3",
  "IndentBlanklineIndent4",
  "IndentBlanklineIndent5",
  "IndentBlanklineIndent6",
}

local M = {
  enabled = true,
  use_treesitter = true,
  use_treesitter_scope = true,

  show_end_of_line = true,
  show_first_indent_level = true,
  show_trailing_blankline_indent = true,
  show_foldtext = true,

  show_current_context = true,
  show_current_context_start = true,
  show_current_context_start_on_current_line = true,

  char = "▏",
  char_blankline = "",
  space_char_blankline = " ",
  context_char = "▏",
  context_char_blankline = "▏",

  char_highlight_list = highlight_list,
  space_char_highlight_list = highlight_list,
  space_char_blankline_highlight_list = {},
  context_highlight_list = {},

  filetype_exclude = {
    "help",
    "terminal",
    "lazy",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "mason",
    "nvdash",
    "nvcheatsheet",
    "",
    -- Custom
    "checkhealth",
    "NvimTree",
    "Trouble",
    "dapui_scopes",
    "dapui_breakpoints",
    "dapui_stacks",
    "dapui_watches",
    "dapui_repl",
    "dapui_console",
  },
}

return M
