local highlight_list = {}
for i = 1, 6 do
  table.insert(highlight_list, "IndentBlanklineIndent" .. i)
end

local M = {
  enabled = true,
  use_treesitter = true,
  use_treesitter_scope = true,
  indent_level = 99,

  show_end_of_line = true,
  show_first_indent_level = true,
  show_trailing_blankline_indent = true,
  show_foldtext = true,

  show_current_context = true,
  show_current_context_start = true,
  show_current_context_start_on_current_line = true,

  char = "▏",
  char_blankline = " ",
  space_char_blankline = " ",
  context_char = "▏",
  context_char_blankline = " ",

  char_highlight_list = highlight_list,
  space_char_highlight_list = { "IndentBlanklineSpaceCharBlankline" },
  space_char_blankline_highlight_list = {},
  context_highlight_list = {},

  filetype_exclude = { "" },
  buftype_exclude = { "nofile", "help", "quickfix", "terminal", "prompt" },
}

return M
