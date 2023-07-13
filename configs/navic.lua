local navic = require "nvim-navic"

local kind_icons = require "custom.icons".kind_icons

navic.setup {
  icons = kind_icons,
  lsp = {
    auto_attach = true,
  },
  highlight = true,
  separator = "",
  depth_limit = 0,
  depth_limit_indicator = "…",
  safe_output = true,
  lazy_update_context = false,
  click = true,
}
