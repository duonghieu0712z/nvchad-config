local kind_icons = require("custom.icons").kind_icons
local symbols = {}
for k, v in pairs(kind_icons) do
  symbols[k] = { icon = v }
end

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
  symbols = symbols,
}

return M
