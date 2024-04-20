return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      dofile(vim.g.base46_cache .. "lsp")
      require "configs.lspconfig"
    end,
  },

  "williamboman/mason-lspconfig.nvim",

  {
    "b0o/schemastore.nvim", -- JSON schema store
    event = "User FilePost",
  },
}
