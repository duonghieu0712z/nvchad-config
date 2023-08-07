local fillchars = {}
for k, v in pairs(require("custom.icons").fillchars) do
  table.insert(fillchars, k .. ":" .. v)
end

local M = {
  window = {
    options = {
      fillchars = table.concat(fillchars, ","),
    },
  },

  plugins = {
    options = {
      enabled = true,
    },

    twilight = { enabled = true },
    gitsigns = { enabled = false },
  },
}

return M
