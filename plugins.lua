local plugins = {
  -- Override plugins
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.nvim-treesitter",
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
    "folke/which-key.nvim",
    keys = { "<leader>", '"', "'", "`", "c", "v", "g", "z", "d", "y" },
  },

  -- Add plugins
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

  {
    "jay-babu/mason-nvim-dap.nvim",
    event = "VimEnter",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = require "custom.configs.dap",
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

  {
    "hrsh7th/cmp-cmdline",
    event = "CmdlineEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp-document-symbol",
    },
    config = function()
      require "custom.configs.cmp-cmdline"
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  {
    "anuvyklack/pretty-fold.nvim",
    event = "BufEnter",
  },

  {
    "stevearc/aerial.nvim",
    event = "BufEnter",
    cmd = { "AerialToggle", "AerialOpen", "AerialInfo" },
    opts = require "custom.configs.aerial",
    config = function(_, opts)
      require("aerial").setup(opts)
      require("telescope").load_extension "aerial"
    end,
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

  {
    "folke/trouble.nvim",
    event = "BufEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = require "custom.configs.trouble",
  },

  {
    "rcarriga/nvim-notify",
    event = "VimEnter",
    opts = require "custom.configs.notify",
    config = function(_, opts)
      require("notify").setup(opts)
      require("telescope").load_extension "notify"
      vim.notify = require "notify"
    end,
  },

  {
    "declancm/cinnamon.nvim",
    event = "VimEnter",
    opts = require "custom.configs.cinnamon",
  },

  {
    "Darazaki/indent-o-matic",
    event = "BufEnter",
    opts = require "custom.configs.indent-o-matic",
  },
}

return plugins
