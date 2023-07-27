local M = {
  extensions = {
    ["ui-select"] = {
      specific_opts = {
        ["mason.ui.language-filter"] = {
          theme = require("telescope.themes").get_dropdown {},
        },
      },
    },
  },
  extensions_list = { "themes", "terms", "ui-select", "dap", "lsp_handlers", "noice", "notify" },
}

return M
