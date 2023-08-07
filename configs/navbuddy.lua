local kind_icons = vim.tbl_map(function(value)
  return value .. " "
end, require("custom.icons").kind_icons)

local M = {
  window = {
    border = "rounded",
    size = "60%",
    position = "50%",
    scrolloff = nil,
    sections = {
      left = {
        size = "20%",
        border = "rounded",
      },
      mid = {
        size = "40%",
        border = "rounded",
      },
      right = {
        border = "rounded",
        preview = "leaf",
      },
    },
  },

  node_markers = {
    enabled = true,
    icons = {
      leaf = "   ",
      leaf_selected = "   ",
      branch = " ❯ ",
    },
  },

  icons = kind_icons,

  use_default_mappings = true,

  lsp = {
    auto_attach = true,
  },

  source_buffer = {
    follow_node = true,
    highlight = true,
    reorient = "smart",
    scrolloff = nil,
  },
}

return M
