local kind_icons = vim.tbl_map(function(value)
  return value .. " "
end, require("custom.icons").kind_icons)

local M = {
  icons = {
    kinds = {
      symbols = kind_icons,
    },
  },
}

return M
