local kind_icons = require "custom.icons".kind_icons

local M = {
  attach_navic = true,
  create_autocmd = true,

  show_dirname = true,
  show_basename = true,
  show_modified = true,

  show_navic = true,

  theme = "auto",
  context_follow_icon_color = false,

  symbols = {
    modified  = "●",
    ellipsis  = "…",
    separator = "",
  },

  kinds = kind_icons,
}

return M
