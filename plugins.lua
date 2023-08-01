---@diagnostic disable: different-requires
local load_mappings = require("core.utils").load_mappings

local plugins = {
  -- Override plugins

  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufEnter",
    opts = require "custom.configs.indent-blankline",
  },

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
    opts = require "custom.configs.mason",
  },

  {
    "hrsh7th/nvim-cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    opts = require "custom.configs.cmp",
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-dap.nvim",
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
    event = "VeryLazy",
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
    event = "VeryLazy",
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
    event = "VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    init = function()
      load_mappings "dap"
    end,
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

  -- Highlight variable
  {
    "RRethy/vim-illuminate",
    event = "BufEnter",
    opts = require "custom.configs.illuminate",
    config = function(_, opts)
      require("illuminate").configure(opts)
    end,
  },

  -- Surround
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "BufEnter",
    config = function()
      require("nvim-surround").setup {}
    end,
  },

  -- Folding
  {
    "kevinhwang91/nvim-ufo",
    event = "BufEnter",
    init = function()
      load_mappings "ufo"
    end,
    dependencies = "kevinhwang91/promise-async",
    opts = require "custom.configs.ufo",
  },

  -- Outline
  {
    "simrat39/symbols-outline.nvim",
    event = "BufEnter",
    opts = require "custom.configs.symbols-outline",
  },

  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    event = "BufEnter",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      {
        "SmiteshP/nvim-navic",
        opts = require "custom.configs.navic",
      },
      {
        "SmiteshP/nvim-navbuddy",
        opts = require "custom.configs.navbuddy",
      },
    },
    opts = require "custom.configs.barbecue",
  },

  -- UI
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    opts = require "custom.configs.dressing",
  },

  -- Trouble
  {
    "folke/trouble.nvim",
    event = "BufEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    init = function()
      load_mappings "trouble"
    end,
    opts = require "custom.configs.trouble",
  },

  -- Notification
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      {
        "rcarriga/nvim-notify",
        opts = require "custom.configs.notify",
      },
    },
    opts = require "custom.configs.noice",
  },

  -- Easy motion
  {
    "phaazon/hop.nvim",
    branch = "v2",
    event = "BufEnter",
    opts = require "custom.configs.hop",
  },

  -- Smooth scroll
  {
    "karb94/neoscroll.nvim",
    event = "BufEnter",
    opts = require "custom.configs.neoscroll",
  },

  -- Guess indent
  {
    "Darazaki/indent-o-matic",
    event = "BufEnter",
    opts = require "custom.configs.indent-o-matic",
  },

  -- Markdown preview
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
  },

  -- Chat GPT
  {
    "jackMort/ChatGPT.nvim",
    cmd = { "ChatGPT", "ChatGPTActAs", "ChatGPTEditWithInstructions", "ChatGPTRun", "ChatGPTCompleteCode" },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    init = function()
      load_mappings "chatgpt"
    end,
    opts = require "custom.configs.chatgpt",
  },

  -- AI code generate
  {
    "Exafunction/codeium.vim",
    event = "InsertEnter",
    cmd = "Codeium",
    init = function()
      require "custom.configs.codeium"
      load_mappings("codeium", { expr = true })
    end,
  },
}

return plugins
