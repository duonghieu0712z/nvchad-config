return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  "williamboman/mason-lspconfig.nvim",

  {
    "b0o/schemastore.nvim", -- JSON schema store
    event = "User FilePost",
  },
}
