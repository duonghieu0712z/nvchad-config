local plugins = {
  -- Override plugins
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.nvim-treesitter",
  },

  {
    "williamboman/mason.nvim",
    opts = require "custom.configs.mason",
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    opts = require "custom.configs.indent-blankline",
  },

  -- Add plugins
  {
    "williamboman/mason-lspconfig.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "custom.configs.lspconfig"
    end,
  },

  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
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
    event = { "BufReadPre", "BufNewFile" },
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
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require "custom.configs.dap-virtual-text"
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      require "custom.configs.dap-ui"
    end,
  },

  {
    "stevearc/aerial.nvim",
    event = { "BufReadPre", "BufNewFile" },
    cmd = { "AerialToggle", "AerialOpen", "AerialInfo" },
    config = function()
      require "custom.configs.aerial"
      require("telescope").load_extension "aerial"
    end,
  },

  {
    "SmiteshP/nvim-navic",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "custom.configs.navic"
    end,
  },

  {
    "folke/trouble.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "custom.configs.trouble"
    end,
  },

  {
    "rcarriga/nvim-notify",
    event = "VimEnter",
    config = function()
      require "custom.configs.notify"
      require("telescope").load_extension "notify"
    end,
  },

  {
    "declancm/cinnamon.nvim",
    event = "VimEnter",
    config = function()
      require "custom.configs.cinnamon"
    end,
  },

  -- { "b0o/schemastore.nvim" },
}

return plugins
