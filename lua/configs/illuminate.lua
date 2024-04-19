local M = {
  providers = { "lsp", "treesitter", "regex" },
  under_cursor = true,

  filetypes_denylist = {
    "",
    "help",
    "checkhealth",
    "terminal",
    "lazy",
    "mason",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "noice",
    "nvdash",
    "nvcheatsheet",
    "NvimTree",
    "Trouble",
    "Outline",
    "dapui_scopes",
    "dapui_breakpoints",
    "dapui_stacks",
    "dapui_watches",
    "dapui_repl",
    "dapui_console",
    "DiffviewFiles",
    "DiffviewFileHistory",
  },
}

return M
