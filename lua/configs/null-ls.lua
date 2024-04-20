-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

local null_ls = require "null-ls"
local mason_null_ls = require "mason-null-ls"

local builtins = null_ls.builtins

local code_actions = builtins.code_actions
local completion = builtins.completion
local diagnostics = builtins.diagnostics
local formatting = builtins.formatting
local hover = builtins.hover

mason_null_ls.setup {
  ensure_installed = {},
  automatic_installation = true,
  handlers = {
    function(source_name, methods)
      mason_null_ls.default_setup(source_name, methods)
    end,

    -- golangci_lint = function(source_name, methods)
    --   null_ls.register(diagnostics[source_name].with {
    --     extra_args = { "--allow-parallel-runners" },
    --   })
    -- end,
  },
}

null_ls.setup {
  sources = {
    -- Code actions
    code_actions.gitrebase,
    code_actions.gitsigns,
    -- code_actions.impl,
    -- code_actions.refactoring,
    -- code_actions.ts_node_action,

    -- Completion
    -- completion.luasnip,
    -- completion.spell,
    -- completion.tags,

    -- Diagnostics
    -- diagnostics.commitlint,
    -- diagnostics.dotenv_linter,
    -- diagnostics.gitlint,
    -- diagnostics.todo_comments,
    -- diagnostics.trail_space,

    -- Formatting

    -- Hover
    -- hover.dictionary,
    -- hover.printenv,
  },
}
