local icons = require "custom.icons"

local opt = vim.opt

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
opt.listchars = icons.listchars

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

local sign_define = vim.fn.sign_define
local dap_signs = icons.dap
for k, v in pairs(dap_signs) do
  sign_define("Dap" .. k, { text = v })
end

require "custom.neovide"
