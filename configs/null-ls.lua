-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

local null_ls = require "null-ls"

local code_actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completion
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local hover = null_ls.builtins.hover

local mason_null_ls = require "mason-null-ls"

mason_null_ls.setup {
  ensure_installed = {},
  automatic_installation = true,
  handlers = {},
}

local sources = {
  -- Code actions
  code_actions.gitsigns,
  -- code_actions.gomodifytags,
  -- code_actions.impl,
  code_actions.refactoring,

  -- Completion
  completion.luasnip,
  completion.tags,

  -- Diagnostics
  diagnostics.todo_comments,
  diagnostics.trail_space,

  -- Formatting
  formatting.trim_newlines,
  formatting.trim_whitespace,

  -- Hover
  hover.dictionary,
  hover.printenv,
}

null_ls.setup {
  sources,
}
