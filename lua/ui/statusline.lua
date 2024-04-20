local utils = require "nvchad.stl.utils"
local icons = require "ui.icons"
local git_icons = icons.git
local diag_icons = icons.diagnostics

local M = {}

local MODE = {
  ["n"] = { "NORMAL", "Normal" },
  ["no"] = { "NORMAL", "Normal" },
  ["nov"] = { "NORMAL", "Normal" },
  ["noV"] = { "NORMAL", "Normal" },
  ["noCTRL-V"] = { "NORMAL", "Normal" },

  ["niI"] = { "NORMAL", "Normal" },
  ["niR"] = { "NORMAL", "Normal" },
  ["niV"] = { "NORMAL", "Normal" },

  ["nt"] = { "NTERMINAL", "NTerminal" },
  ["ntT"] = { "NTERMINAL", "NTerminal" },

  ["v"] = { "VISUAL", "Visual" },
  ["V"] = { "V-LINE", "Visual" },
  [""] = { "V-BLOCK", "Visual" },

  ["vs"] = { "VISUAL", "Visual" },
  ["Vs"] = { "V-LINE", "Visual" },
  ["s"] = { "V-BLOCK", "Visual" },

  ["s"] = { "SELECT", "Select" },
  ["S"] = { "S-LINE", "Select" },
  [""] = { "S-BLOCK", "Select" },

  ["i"] = { "INSERT", "Insert" },
  ["ic"] = { "INSERT", "Insert" },
  ["ix"] = { "INSERT", "Insert" },

  ["R"] = { "REPLACE", "Replace" },
  ["Rc"] = { "REPLACE", "Replace" },
  ["Rx"] = { "REPLACE", "Replace" },

  ["Rv"] = { "V-REPLACE", "Replace" },
  ["Rvc"] = { "V-REPLACE", "Replace" },
  ["Rvx"] = { "V-REPLACE", "Replace" },

  ["c"] = { "COMMAND", "Command" },
  ["cr"] = { "COMMAND", "Command" },

  ["cv"] = { "COMMAND", "Command" },
  ["cvr"] = { "COMMAND", "Command" },

  ["ce"] = { "COMMAND", "Command" },
  ["ct"] = { "COMMAND", "Terminal" },

  ["r"] = { "PROMPT", "Confirm" },
  ["rm"] = { "MORE", "Confirm" },
  ["r?"] = { "CONFIRM", "Confirm" },

  ["!"] = { "SHELL", "Terminal" },
  ["t"] = { "TERMINAL", "Terminal" },
}

local mode = function()
  if not utils.is_activewin() then
    return ""
  end

  local mode = vim.api.nvim_get_mode().mode
  return "%#St_" .. MODE[mode][2] .. "Mode#  " .. MODE[mode][1] .. " "
end

local git = function()
  local bufnr = vim.b[utils.stbufnr()]
  if not bufnr.gitsigns_head or bufnr.gitsigns_git_status then
    return "%#St_gitIcons#"
  end

  local git_status = bufnr.gitsigns_status_dict
  local added, changed, removed = git_status.added, git_status.changed, git_status.removed

  local git_list = { "%#St_gitIcons# " .. git_icons.branch .. git_status.head }
  if added and added > 0 then
    table.insert(git_list, "%#St_lspInfo#" .. git_icons.added .. " " .. added)
  end
  if changed and changed > 0 then
    table.insert(git_list, "%#St_lspWarning#" .. git_icons.changed .. " " .. changed)
  end
  if removed and removed > 0 then
    table.insert(git_list, "%#St_lspError#" .. git_icons.removed .. " " .. removed)
  end

  return table.concat(git_list, " ")
end

local diagnostics = function()
  if not rawget(vim, "lsp") then
    return ""
  end

  local get_num_of_diagnostics = function(severity)
    return #vim.diagnostic.get(utils.stbufnr(), { severity = severity })
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

local lsp = function()
  return "%#St_Lsp#" .. utils.lsp()
end

local cursor = function()
  local lnum = vim.fn.line "."
  local cnum = vim.fn.col "."
  local status = "" .. lnum .. ":" .. cnum
  return "%#St_pos_icon# " .. status .. " %p%% "
end

M.order = { "mode", "git", "%=", "empty", "%=", "diagnostics", "lsp", "cursor" }

M.modules = {
  mode = mode,
  git = git,
  diagnostics = diagnostics,
  lsp = lsp,
  cursor = cursor,
  ["empty"] = "%#St_LspMsg#",
  ["%="] = "%=",
}

return M
