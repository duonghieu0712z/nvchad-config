local opt = vim.opt
local g = vim.g

opt.number = true
opt.relativenumber = false
opt.signcolumn = "yes"

opt.autoindent = true
opt.preserveindent = true
opt.smartindent = true
opt.expandtab = true
opt.smarttab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4

opt.list = true
opt.listchars = {
  eol = "↩", -- end of line
  tab = "▸·", -- tab
  space = "·", -- space
  trail = "·", -- trailing space
  extends = "⯈", -- in last column, when wrap line is off and line continues
  precedes = "⯇", -- in first column, when wrap line is off and character visible in first column
  conceal = " ", -- show in place of concealed text, when 'conceallevel' is set to 1
  nbsp = "⌴", -- non-breakable space
}

opt.wrap = true
opt.showbreak = "↪↪"

opt.ignorecase = false

if vim.loop.os_uname().sysname == "Windows_NT" then
  opt.shell = vim.fn.executable "pwsh" and "pwsh" or "powershell"
  opt.shellcmdflag =
    "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
  opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  opt.shellquote = ""
  opt.shellxquote = ""
end

-- g.do_filetype_lua = 1
-- g.did_load_filetypes = 0

-- for _, provider in ipairs { "node", "python3" } do
--   vim.g["loaded_" .. provider .. "_provider"] = 1
-- end

local sign_define = vim.fn.sign_define

local dap_signs = require("custom.icons").dap

for k, v in pairs(dap_signs) do
  sign_define("Dap" .. k, { text = v })
end

require "custom.neovide"
