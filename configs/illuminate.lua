local M = {
  providers = { "lsp", "treesitter", "regex" },
  under_cursor = true,

  filetypes_denylist = {
    "help",
    "terminal",
    "lazy",
    "lspinfo",
    "TelescopePrompt",
    "TelescopeResults",
    "mason",
    "nvdash",
    "nvcheatsheet",
    "checkhealth",
    "NvimTree",
    "Trouble",
    "aerial",
    "dapui_scopes",
    "dapui_breakpoints",
    "dapui_stacks",
    "dapui_watches",
    "dapui_repl",
    "dapui_console",
  },
}

return M
