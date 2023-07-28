local kind_icons = {}
for k, v in pairs(require("custom.icons").kind_icons) do
  kind_icons[k] = v .. " "
end

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
