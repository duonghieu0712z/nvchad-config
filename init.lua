local icons = require "custom.icons"

local opt = vim.opt

do
  opt.guicursor:append "a:blinkwait700-blinkoff500-blinkon700"
  opt.guifont = "FiraCode Nerd Font:h11"

  opt.number = true
  opt.relativenumber = true
  opt.signcolumn = "yes"
  opt.colorcolumn = "60,80,120"

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
  opt.showbreak = "↪↪"

  opt.showcmd = false
  opt.cmdheight = 0

  opt.foldmethod = "expr"
  opt.foldexpr = "nvim_treesitter#foldexpr()"
  opt.foldenable = true
  opt.foldcolumn = "1"
  opt.foldlevel = 99
  opt.foldlevelstart = 99

  opt.ignorecase = false
  opt.smartcase = true
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

-- Disable some options in nofile
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  pattern = "*",
  callback = function()
    if vim.bo.buftype ~= "" and vim.bo.buftype ~= "nowrite" then
      local opt_local = vim.opt_local
      opt_local.number = false
      opt_local.relativenumber = false
      opt_local.numberwidth = 1
      opt_local.signcolumn = "no"
      opt_local.colorcolumn = ""
      opt_local.foldcolumn = "0"
    end
  end,
})

local sign_define = vim.fn.sign_define

local dap_signs = icons.dap
for k, v in pairs(dap_signs) do
  sign_define("Dap" .. k, { text = v, texthl = "DapBreakpoint" })
end

-- Load neovide settings
require "custom.neovide"
