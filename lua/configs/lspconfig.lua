-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md

require "utils.lsp"

local lspconfig = require "lspconfig"
local mason_lsp = require "mason-lspconfig"
local tbl = require "utils.table"

local utils = require "utils.lsp.utils"
local on_attach = utils.on_attach
local on_init = utils.on_init
local capabilities = utils.capabilities

---Setup server
---@param opts? any
---@return fun(server_name: string)
local setup_server = function(opts)
  local default_opts = {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
  opts = tbl.mergeForce(default_opts, opts or {})
  return function(server_name)
    lspconfig[server_name].setup(opts)
  end
end

mason_lsp.setup {
  ensure_installed = {},
  automatic_installation = true,
  handlers = {
    setup_server(),

    ["lua_ls"] = setup_server {
      settings = {
        Lua = {
          completion = {
            callSnippet = "Replace",
          },

          diagnostics = {
            globals = { "vim" },
          },

          workspace = {
            library = {
              [vim.fn.expand "$VIMRUNTIME/lua"] = true,
              [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
              [vim.fn.stdpath "data" .. "/lazy/lazy.nvim/lua/lazy"] = true,
              [vim.fn.stdpath "data" .. "/lazy"] = true,
            },
            maxPreload = 100000,
            preloadFileSize = 10000,
          },
        },
      },
    },

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
  },
}
