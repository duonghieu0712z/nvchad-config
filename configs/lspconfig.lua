-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md

local lspconfig = require "lspconfig"

local on_attach = function(client, bufnr)
  require("plugins.configs.lspconfig").on_attach(client, bufnr)
  if client.server_capabilities.documentSymbolProvider then
    require "nvim-navic".attach(client, bufnr)
  end
end

local capabilities = require("plugins.configs.lspconfig").capabilities

require("mason-lspconfig").setup {
  automatic_installation = true,
  handlers = {
    function(server_name)
      lspconfig[server_name].setup {
        on_attach = on_attach,
        capabilities = capabilities,
      }
    end,

    ["jsonls"] = function()
      lspconfig["jsonls"].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          json = {
            schemas = require("schemastore").json.schemas(),
            validate = { enable = true },
          },
        },
      }
    end,

    ["yamlls"] = function()
      lspconfig["yamlls"].setup {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          yaml = {
            schemas = require("schemastore").yaml.schemas(),
          },
        },
      }
    end
  },
}

local servers = {}

for _, server_name in ipairs(servers) do
  lspconfig[server_name].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
