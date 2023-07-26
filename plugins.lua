local plugins = {
  -- Override plugins

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.nvim-treesitter",
  },

  {
    "lewis6991/gitsigns.nvim",
    opts = require "custom.configs.gitsigns",
  },

  {
    "williamboman/mason.nvim",
    event = "VimEnter",
    opts = require "custom.configs.mason",
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufEnter",
    opts = require "custom.configs.indent-blankline",
  },

  {
    "hrsh7th/nvim-cmp",
    opts = require "custom.configs.cmp",
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope-dap.nvim",
      "DuongHieu0712z/telescope-ui-select.nvim",
      "gbrlsnchs/telescope-lsp-handlers.nvim",
    },
    opts = require "custom.configs.telescope",
  },

  {
    "folke/which-key.nvim",
    keys = { "<leader>", '"', "'", "`", "c", "v", "g", "z", "d", "y" },
  },

  -- Add plugins

  -- Mason
  {
    "williamboman/mason-lspconfig.nvim",
    event = "VimEnter",
    dependencies = {
      "williamboman/mason.nvim",
      "b0o/schemastore.nvim",
    },
    config = function()
      require "custom.configs.lspconfig"
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    event = "VimEnter",
    dependencies = {
      "williamboman/mason.nvim",
      "jose-elias-alvarez/null-ls.nvim",
    },
    config = function()
      require "custom.configs.null-ls"
    end,
  },

  -- DAP
  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VimEnter",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    config = function()
      require "custom.configs.dap"
    end,
  },

  {
    "theHamsta/nvim-dap-virtual-text",
    event = "BufEnter",
    dependencies = { "mfussenegger/nvim-dap" },
    opts = require "custom.configs.dap-virtual-text",
  },

  {
    "rcarriga/nvim-dap-ui",
    event = "BufEnter",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require "custom.configs.dap-ui"
    end,
  },

  -- Completions
  {
    "hrsh7th/cmp-cmdline",
    event = "CmdlineEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp-document-symbol",
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    config = function()
      require "custom.configs.cmp-cmdline"
    end,
  },

  {
    "rcarriga/cmp-dap",
    event = "BufEnter",
    config = function()
      require "custom.configs.cmp-dap"
    end,
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  -- Folding
  {
    "anuvyklack/pretty-fold.nvim",
    event = "BufEnter",
  },

  -- Outline
  {
    "stevearc/aerial.nvim",
    event = "BufEnter",
    cmd = { "AerialToggle", "AerialOpen", "AerialInfo" },
    opts = require "custom.configs.aerial",
  },

  {
    "SmiteshP/nvim-navic",
    event = "BufEnter",
    opts = require "custom.configs.navic",
  },

  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    event = "BufEnter",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    opts = require "custom.configs.barbecue",
  },

  -- Trouble
  {
    "folke/trouble.nvim",
    event = "BufEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = require "custom.configs.trouble",
  },

  -- Notification
  {
    "rcarriga/nvim-notify",
    event = "VimEnter",
    opts = require "custom.configs.notify",
    config = function(_, opts)
      require("notify").setup(opts)
      vim.notify = require "notify"
    end,
  },

  -- Smooth scroll
  {
    "declancm/cinnamon.nvim",
    event = "VimEnter",
    opts = require "custom.configs.cinnamon",
  },

  -- Guess indent
  {
    "Darazaki/indent-o-matic",
    event = "BufEnter",
    opts = require "custom.configs.indent-o-matic",
  },
}

return plugins
