-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
-- https://github.com/williamboman/mason-lspconfig.nvim/blob/main/doc/server-mapping.md

local lspconfig = require "lspconfig"

local on_attach = function(client, bufnr)
  require("plugins.configs.lspconfig").on_attach(client, bufnr)
  -- if client.server_capabilities.documentSymbolProvider then
  --   require("nvim-navic").attach(client, bufnr)
  -- end
end

local capabilities = require("plugins.configs.lspconfig").capabilities

local schema_setup = function(server_name)
  if server_name == "jsonls" or server_name == "json-lsp" then
    lspconfig[server_name].setup {
      settings = {
        json = {
          schemas = require("schemastore").json.schemas(),
          validate = { enable = true },
        },
      },
    }
  elseif server_name == "yamlls" or server_name == "yaml-language-server" then
    lspconfig[server_name].setup {
      settings = {
        yaml = {
          schemas = require("schemastore").yaml.schemas(),
        },
      },
    }
  end
end

require("mason-lspconfig").setup {
  automatic_installation = true,
}

local servers = {}

for _, server_name in ipairs(servers) do
  lspconfig[server_name].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
  schema_setup(server_name)
end

require("mason-lspconfig").setup_handlers {
  function(server_name)
    lspconfig[server_name].setup {
      on_attach = on_attach,
      capabilities = capabilities,
    }
    schema_setup(server_name)
  end,
}
