local kind_icons = vim.tbl_map(function(value)
  return { icon = value }
end, require("custom.icons").kind_icons)

local M = {
  highlight_hovered_item = true,
  show_guides = true,
  position = "right",
  relative_width = true,
  width = 20,
  auto_close = false,
  auto_preview = false,
  show_symbol_details = true,
  wrap = false,
  symbols = kind_icons,
}

return M
