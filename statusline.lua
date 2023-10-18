---@diagnostic disable: undefined-field
local icons = require "custom.icons"
local git_icons = icons.git
local diag_icons = icons.diagnostics

local git = function()
  if not vim.b.gitsigns_head or vim.b.gitsigns_git_status then
    return ""
  end

  local git_status = vim.b.gitsigns_status_dict
  local added, changed, removed = git_status.added, git_status.changed, git_status.removed

  local git_list = { "%#St_gitIcons#" .. git_icons.branch .. git_status.head }
  if added and added > 0 then
    table.insert(git_list, "%#St_lspInfo#" .. git_icons.added .. " " .. added)
  end
  if changed and changed > 0 then
    table.insert(git_list, "%#St_lspWarning#" .. git_icons.changed .. " " .. changed)
  end
  if removed and removed > 0 then
    table.insert(git_list, "%#St_lspError#" .. git_icons.removed .. " " .. removed)
  end

  return " " .. table.concat(git_list, " ")
end

local lsp_diagnostics = function()
  if not rawget(vim, "lsp") then
    return ""
  end

  local get_num_of_diagnostics = function(severity)
    return #vim.diagnostic.get(0, { severity = severity })
  end
  local severity = vim.diagnostic.severity

  local errors = get_num_of_diagnostics(severity.ERROR)
  local warns = get_num_of_diagnostics(severity.WARN)
  local hints = get_num_of_diagnostics(severity.HINT)
  local infos = get_num_of_diagnostics(severity.INFO)

  local diag_list = {}
  if errors > 0 then
    table.insert(diag_list, "%#St_lspError#" .. diag_icons.error .. " " .. errors)
  end
  if warns > 0 then
    table.insert(diag_list, "%#St_lspWarning#" .. diag_icons.warning .. " " .. warns)
  end
  if hints > 0 then
    table.insert(diag_list, "%#St_lspHints#" .. diag_icons.hint .. " " .. hints)
  end
  if infos > 0 then
    table.insert(diag_list, "%#St_lspInfo#" .. diag_icons.information .. " " .. infos)
  end

  return table.concat(diag_list, " ") .. " "
end

local M = {
  theme = "default",
  separator_style = "arrow",
  overriden_modules = function(modules)
    modules[3] = git()
    modules[5] = ""
    modules[7] = lsp_diagnostics()
  end,
}

return M
