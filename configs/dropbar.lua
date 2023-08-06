local kind_icons = {}
for k, v in pairs(require("custom.icons").kind_icons) do
  kind_icons[k] = v .. " "
end

local M = {
  icons = {
    kinds = {
      symbols = kind_icons,
    },
  },
}

return M
