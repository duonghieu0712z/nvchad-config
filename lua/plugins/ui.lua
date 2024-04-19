return {
  -- Override default configs
  {
    "NvChad/nvim-colorizer.lua",
    opts = require "configs.colorizer",
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    dependencies = { "HiPhish/rainbow-delimiters.nvim" },
    config = function()
      dofile(vim.g.base46_cache .. "blankline")
      require "configs.blankline"
      dofile(vim.g.base46_cache .. "blankline")
    end,
  },

  {
    "folke/which-key.nvim",
    keys = { "<leader>", "<C-r>", "<C-w", '"', "'", "`", "c", "v", "g", "z", "d", "y" },
  },

  -- Highlight variable
  {
    "RRethy/vim-illuminate",
    event = "BufEnter",
    opts = require "configs.illuminate",
    config = function(_, opts)
      require("illuminate").configure(opts)
    end,
  },

  -- UI
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = require "configs.dressing",
  },

  -- Notification
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      {
        "rcarriga/nvim-notify",
        opts = require "configs.notify",
      },
    },
    opts = require "configs.noice",
  },

  -- Trouble
  {
    "folke/trouble.nvim",
    cmd = { "Trouble", "TroubleToggle" },
    opts = require "configs.trouble",
  },

  -- Diff view
  {
    "sindrets/diffview.nvim",
    event = "BufEnter",
    opts = require "configs.diffview",
  },
}
