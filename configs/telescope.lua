local M = {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_cursor {},
    },
  },
  extensions_list = { "themes", "terms", "aerial", "notify", "ui-select", "dap", "lsp_handlers" },
}

return M
