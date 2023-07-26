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
  extensions_list = { "themes", "terms", "aerial", "notify", "ui-select", "dap", "lsp_handlers" },
}

return M