require "nvchad.options"

local icons = require "ui.icons"

local opt = vim.opt

do
  opt.guicursor:append "a:blinkwait700-blinkoff500-blinkon700"
  opt.guifont = "FiraCode Nerd Font:h11"

  opt.number = true
  opt.relativenumber = true
  -- opt.signcolumn = "auto:1"
  -- opt.foldcolumn = "auto:1"
  -- opt.colorcolumn = "60,80,120"

  opt.foldmethod = "expr"
  opt.foldexpr = "nvim_treesitter#foldexpr()"
  opt.foldenable = true
  opt.foldlevel = 99
  opt.foldlevelstart = 99

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
  opt.fillchars = icons.fillchars

  opt.wrap = true
  opt.linebreak = true
  opt.breakindent = true
  -- opt.showbreak = "↪↪"

  opt.showcmd = false
  opt.cmdheight = 0
  -- opt.pumheight = 20

  opt.ignorecase = false
  opt.smartcase = true

  opt.scrolloff = 8
end

if vim.loop.os_uname().sysname == "Windows_NT" then
  opt.shell = vim.fn.executable "pwsh" and "pwsh" or "powershell"
  opt.shellcmdflag =
    "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
  opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
  opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
  opt.shellquote = ""
  opt.shellxquote = ""
end
