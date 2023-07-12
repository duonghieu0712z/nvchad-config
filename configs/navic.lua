local navic = require "nvim-navic"

local kind_icons = require("custom.icons").kind_icons
for k, v in pairs(kind_icons) do
  kind_icons[k] = v .. " "
end

navic.setup {
  icons = kind_icons,
  lsp = {
    auto_attach = true,
  },
  highlight = true,
  separator = " > ",
  depth_limit = 0,
  depth_limit_indicator = "…",
}

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"

-- local utils = require "configs.core.utils"
-- local colors = require "configs.theme.colors"

-- local set_hl = utils.set_highlight

-- local kind_icons_hl = colors.kind_icons
-- for k, v in pairs(kind_icons_hl) do
--   set_hl("NavicIcons" .. k, v)
-- end

-- local navic_hl = colors.navic
-- for k, v in pairs(navic_hl) do
--   set_hl("Navic" .. k, v)
-- end
