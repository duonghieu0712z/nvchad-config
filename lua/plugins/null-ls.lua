return {
  {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.null-ls"
    end,
  },

  "jay-babu/mason-null-ls.nvim",
}
