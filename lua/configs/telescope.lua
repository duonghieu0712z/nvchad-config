local options = require "nvchad.configs.telescope"

options.defaults.file_ignore_patterns = { "node_modules", "vendor", "**/*.meta" }

local extensions_list = { "noice", "notify" }
for _, v in ipairs(extensions_list) do
  table.insert(options.extensions_list, v)
end

return options
