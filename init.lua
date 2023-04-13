local opt = vim.opt
local g = vim.g

opt.number = true
opt.relativenumber = false
opt.signcolumn = "yes"

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

-- opt.shell = "pwsh.exe"

-- g.do_filetype_lua = 1
-- g.did_load_filetypes = 0

-- for _, provider in ipairs { "node", "python3" } do
--   vim.g["loaded_" .. provider .. "_provider"] = 1
-- end

local sign_define = vim.fn.sign_define

local dap_signs = {
  Breakpoint = "",
  BreakpointCondition = "",
  BreakpointRejected = "",
  LogPoint = "",
  Stopped = "→",
}

for k, v in pairs(dap_signs) do
  sign_define("Dap" .. k, { text = v })
end

require "custom.neovide"
