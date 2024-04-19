local tbl = require "utils.table"

local map = vim.keymap.set

local M = {}

---Set a new |mapping|
---@param mode string|table Mode short-name
---@param configs mapping.configs Mapping configs
function M.map(mode, configs)
  local lhs = configs[1]
  local rhs = configs[2]
  local desc = configs[3]

  local opts = tbl.mergeForce({
    silent = true,
    nowait = true,
    remap = false,
  }, configs.opts or {})
  if desc ~= nil and opts.desc == nil then
    opts.desc = desc
  end

  map(mode, lhs, rhs, opts)
end

return M
