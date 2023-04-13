local aerial = require "aerial"

local kind_icons = require("custom.icons").kind_icons

local guide_icons = {
  whitespace = "  ",
  nested_top = "│ ",
  mid_item = "├─",
  last_item = "└─",
}

local mappings = {
  -- ["<leader>ca"] = { "<cmd>AerialToggle!<cr>", " Toggle symbol outline" },
  -- ["{"] = { "<cmd>AerialPrev<cr>", "Previous symbol" },
  -- ["}"] = { "<cmd>AerialNext<cr>", "Next symbol" },
  -- ["[["] = { "<cmd>AerialPrevUp<cr>", "Previous up symbol" },
  -- ["]]"] = { "<cmd>AerialNextUp<cr>", "Next up symbol" },
}

aerial.setup {
  backends = { "treesitter", "lsp", "markdown", "man" },
  close_behavior = "auto",

  default_bindings = true,
  default_direction = "prefer_right",

  disable_max_lines = 10000,
  disable_max_size = 2000000,

  filter_kind = false,

  highlight_mode = "split_width",
  highlight_closest = true,
  highlight_on_hover = false,
  highlight_on_jump = 300,

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

  width = nil,
  min_width = 30,
  max_width = { 50, 0.3 },

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
  on_first_symbols = function(bufnr)
    -- TODO:
  end,

  open_automatic = false,
  placement_editor_edge = false,
  post_jump_cmd = "normal! zz",
  close_on_select = false,
  update_events = "TextChanged,InsertLeave",

  show_guides = true,
  guides = guide_icons,

  float = {
    border = "rounded",
    relative = "cursor",

    height = nil,
    min_height = { 8, 0.1 },
    max_height = 0.9,

    override = function(conf)
      return conf
    end,
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

-- local utils = require "configs.core.utils"
-- local colors = require "configs.theme.colors"

-- local set_hl = utils.set_highlight

-- local kind_icons_hl = colors.kind_icons
-- for k, v in pairs(kind_icons_hl) do
--   set_hl("Aerial" .. k, v)
--   set_hl("Aerial" .. k .. "Icon", v)
-- end

-- local aerial_hl = colors.aerial
-- for k, v in pairs(aerial_hl) do
--   set_hl("Navic" .. k, v)
-- end
-- for i, v in ipairs(aerial_hl) do
--   set_hl("NavicGuide" .. i, v)
-- end
