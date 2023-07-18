local kind_icons = require("custom.icons").kind_icons

local guide_icons = {
  whitespace = "  ",
  nested_top = "│ ",
  mid_item = "├─",
  last_item = "└─",
}

local mappings = {
  -- ["<leader>ct"] = { "<cmd>AerialToggle!<cr>", " Toggle symbol outline" },
  -- ["{"] = { "<cmd>AerialPrev<cr>", "Previous symbol" },
  -- ["}"] = { "<cmd>AerialNext<cr>", "Next symbol" },
  -- ["[["] = { "<cmd>AerialPrevUp<cr>", "Previous up symbol" },
  -- ["]]"] = { "<cmd>AerialNextUp<cr>", "Next up symbol" },
}

local M = {
  backends = { "treesitter", "lsp", "markdown", "man" },

  layout = {
    width = 0.3,
    default_direction = "prefer_right",
    placement = "edge",
  },

  attach_mode = "global",

  lazy_load = true,

  filter_kind = false,

  highlight_mode = "split_width",
  highlight_closest = true,
  highlight_on_hover = true,

  highlight_on_jump = 300,
  autojump = true,

  icons = kind_icons,

  ignore = {
    unlisted_buffers = true,
    filetypes = {},
    buftypes = "special",
    winfyptes = "special",
  },

  manage_folds = false,
  link_folds_to_tree = false,
  link_tree_to_folds = true,

  nerd_font = "auto",

  on_attach = function(bufnr)
    require("which-key").register(mappings, {
      mode = "n",
      silent = true,
      noremap = true,
      nowait = true,
      buffer = bufnr,
    })
  end,

  open_automatic = true,
  close_on_select = false,

  show_guides = true,
  guides = guide_icons,

  float = {
    border = "rounded",
    relative = "cursor",
    height = 0.3,
  },

  nav = {
    border = "rounded",
    autojump = true,
    preview = true,
  },

  lsp = {
    diagnostics_trigger_update = true,
    update_when_errors = true,
    update_delay = 100,
  },

  treesitter = {
    update_delay = 100,
  },

  markdown = {
    update_delay = 100,
  },
}

-- require "telescope".load_extension "aerial"

return M
