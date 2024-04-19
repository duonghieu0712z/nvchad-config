local stl = require "nvchad.stl.utils"
local icons = require "ui.icons"
local git_icons = icons.git
local diag_icons = icons.diagnostics

local M = {}

M.git = function()
  local bufnr = vim.b[stl.stbufnr()]
  if not bufnr.gitsigns_head or bufnr.gitsigns_git_status then
    return ""
  end

  local git_status = bufnr.gitsigns_status_dict
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

M.diagnostics = function()
  if not rawget(vim, "lsp") then
    return ""
  end

  local get_num_of_diagnostics = function(severity)
    return #vim.diagnostic.get(stl.stbufnr(), { severity = severity })
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

M.lsp_msg = function()
  return ""
end

return M
