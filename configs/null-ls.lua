-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

local null_ls = require "null-ls"
local mason_null_ls = require "mason-null-ls"

local code_actions = null_ls.builtins.code_actions
local completion = null_ls.builtins.completion
local diagnostics = null_ls.builtins.diagnostics
local formatting = null_ls.builtins.formatting
local hover = null_ls.builtins.hover

mason_null_ls.setup {
  ensure_installed = {},
  automatic_installation = true,
  handlers = {
    function(source_name, methods)
      mason_null_ls.default_setup(source_name, methods)
    end,

    golangci_lint = function(source_name, methods)
      null_ls.register(diagnostics[source_name].with {
        extra_args = { "--allow-parallel-runners" },
      })
    end,
  },
}

null_ls.setup {
  sources = {
    -- Code actions
    code_actions.gitsigns,
    -- code_actions.impl,
    code_actions.refactoring,

    -- Completion
    completion.luasnip,
    completion.tags,

    -- Diagnostics
    diagnostics.todo_comments,
    diagnostics.trail_space,

    -- Formatting
    formatting.trim_newlines, -- required `awk`
    formatting.trim_whitespace, -- required `awk`

    -- Hover
    hover.dictionary,
    hover.printenv,
  },
}
