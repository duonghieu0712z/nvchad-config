local plugins = {
  -- Override plugins
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.nvim-treesitter",
  },

  {
    "williamboman/mason.nvim",
    event = { "VimEnter" },
    opts = require "custom.configs.mason",
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufEnter" },
    opts = require "custom.configs.indent-blankline",
  },

  {
    "hrsh7th/nvim-cmp",
    opts = require "custom.configs.cmp",
  },

  -- Add plugins
  {
    "williamboman/mason-lspconfig.nvim",
    event = { "VimEnter" },
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
    event = { "VimEnter" },
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
    event = { "VimEnter" },
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
    "hrsh7th/cmp-cmdline",
    event = "CmdlineEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp-document-symbol",
    },
    config = function()
      require "custom.configs.cmp-cmdline"
    end
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
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = require "custom.configs.trouble",
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

  {
    "Darazaki/indent-o-matic",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "custom.configs.indent-o-matic"
    end,
  },
}

return plugins
