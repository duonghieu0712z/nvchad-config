local options = require "nvchad.configs.telescope"

local extensions_list = { "noice", "notify" }
for _, v in ipairs(extensions_list) do
  table.insert(options.extensions_list, v)
end

return options
