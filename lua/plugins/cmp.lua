return {
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      dofile(vim.g.base46_cache .. "cmp")
      return require "nvim-utils.cmp"
    end,
  },

  {
    "hrsh7th/cmp-cmdline",
    event = "CmdlineEnter",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp-document-symbol",
    },
    config = function()
      require "nvim-utils.cmp-cmdline"
    end,
  },
}
