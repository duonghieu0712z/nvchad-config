local map = vim.keymap.set

local M = {}

---Get options from mapping configs
---@param configs mapping.configs
---@return mapping.options
local getOptions = function(configs)
  local opts = {
    silent = true,
    nowait = true,
    remap = false,
  }
  for k, v in pairs(configs) do
    if type(k) == "string" then
      opts[k] = v
    end
  end
  opts.desc = configs[3]
  return opts
end

---Set a new |mapping|
---@param mode string|table Mode short-name
---@param configs mapping.configs Mapping configs
function M.map(mode, configs)
  local lhs = configs[1]
  local rhs = configs[2]
  local opts = getOptions(configs)
  map(mode, lhs, rhs, opts)
end

return M
