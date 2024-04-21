return {
  -- Override default configs
  {
    "lewis6991/gitsigns.nvim",
    opts = function()
      return require "configs.gitsigns"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = require "configs.telescope",
  },

  -- My utilities
  "duonghieu0712z/nvim-utils",

  -- Surround
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "User FilePost",
    config = true,
  },

  -- Smooth scroll
  {
    "karb94/neoscroll.nvim",
    event = "BufEnter",
    opts = require "configs.neoscroll",
  },

  -- Guess indent
  {
    "NMAC427/guess-indent.nvim",
    event = "User FilePost",
    cmd = "GuessIndent",
    opts = {
      auto_cmd = true,
      buftype_exclude = { "nofile", "help", "quickfix", "terminal", "prompt" },
    },
  },

  -- Easy motion
  {
    "phaazon/hop.nvim",
    branch = "v2",
    event = "BufEnter",
    opts = {},
  },

  -- Disable conform.nvim
  {
    "stevearc/conform.nvim",
    enabled = false,
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
}
