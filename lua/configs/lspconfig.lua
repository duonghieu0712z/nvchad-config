-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md

local lspconfig = require "lspconfig"
local mason_lsp = require "mason-lspconfig"
local nvchad_lsp = require "nvchad.configs.lspconfig"

local on_attach = nvchad_lsp.on_attach
local on_init = nvchad_lsp.on_init

local capabilities = nvchad_lsp.capabilities
capabilities.offsetEncoding = { "utf-16" } -- C/C++ configs
capabilities.textDocument.foldingRange = { -- Folding configs
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

---@param opts? any
---@return fun(server_name: string)
local setup_server = function(opts )
  local default_opts = {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
  opts = vim.tbl_deep_extend("force", default_opts, opts or {})

  return function(server_name)
    lspconfig[server_name].setup(opts)
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
  },
}
