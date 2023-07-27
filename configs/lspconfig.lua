-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md

local lspconfig = require "lspconfig"
local mason_lsp = require "mason-lspconfig"

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local setup_server = function(opts)
  local default_opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  opts = vim.F.if_nil(opts, {})
  vim.tbl_deep_extend("force", default_opts, opts)
  return function(server_name)
    lspconfig[server_name].setup(default_opts)
  end
end

mason_lsp.setup {
  ensure_installed = {},
  automatic_installation = true,
  handlers = {
    setup_server(),

    ["jsonls"] = setup_server {
      settings = {
        json = {
          schemas = require("schemastore").json.schemas(),
          validate = { enable = true },
        },
      },
    },

    ["yamlls"] = setup_server {
      settings = {
        yaml = {
          schemas = require("schemastore").yaml.schemas(),
        },
      },
    },

    ["lua_ls"] = setup_server {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              [vim.fn.expand "$VIMRUNTIME/lua"] = true,
              [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
              [vim.fn.stdpath "data" .. "/lazy/extensions/nvchad_types"] = true,
              [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
            },
            maxPreload = 100000,
            preloadFileSize = 10000,
          },
        },
      },
    },
  },
}
