local icons = require "custom.icons"
local git_icons = icons.git
local diag_icons = icons.diagnostics

local git = function()
  if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
    return ""
  end

  local git_status = vim.b.gitsigns_status_dict

  local added = (git_status.added and git_status.added ~= 0) and (git_icons.added .. " " .. git_status.added) or ""
  local changed = (git_status.changed and git_status.changed ~= 0) and (git_icons.changed .. " " .. git_status.changed) or ""
  local removed = (git_status.removed and git_status.removed ~= 0) and (git_icons.removed .. " " .. git_status.removed) or ""
  local branch_name = git_icons.branch .. " " .. git_status.head

  local git_list = { "%#St_gitIcons#", branch_name, added, changed, removed }
  return table.concat(git_list, " ")
end

local lsp_diagnostics = function()
  if not rawget(vim, "lsp") then
    return ""
  end

  local errors = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.ERROR })
  local warnings = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.WARN })
  local hints = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.HINT })
  local info = #vim.diagnostic.get(0, { severity = vim.diagnostic.severity.INFO })

  local err_str = (errors and errors > 0) and ("%#St_lspError#" .. diag_icons.error .. " " .. errors) or ""
  local warn_str = (warnings and warnings > 0) and ("%#St_lspWarning#" .. diag_icons.warning .. " " .. warnings) or ""
  local hint_str = (hints and hints > 0) and ("%#St_lspHints#" .. diag_icons.hint .. " " .. hints) or ""
  local info_str = (info and info > 0) and ("%#St_lspInfo#" .. diag_icons.information .. " " .. info) or ""

  local diag_list = { err_str, warn_str, hint_str, info_str }
  return table.concat(diag_list, " ")
end

local M = {
  theme = "default",
  separator_style = "arrow",
  overriden_modules = function(modules)
    modules[3] = git()
    modules[7] = lsp_diagnostics()

    table.remove(modules, 5)
  end,
}

return M
