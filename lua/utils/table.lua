local M = {}

---Merges force recursively two or more map-like tables.
---@generic T1: table
---@generic T2: table
---@param ... T2 Two or more map-like tables
---@return T1|T2 (table) Merged table
M.mergeForce = function(...)
  return vim.tbl_deep_extend("force", ...)
end

---Merges keep recursively two or more map-like tables.
---@generic T1: table
---@generic T2: table
---@param ... T2 Two or more map-like tables
---@return T1|T2 (table) Merged table
M.mergeKeep = function(...)
  return vim.tbl_deep_extend("keep", ...)
end

return M
