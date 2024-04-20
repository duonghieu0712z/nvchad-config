local map = require("utils.keymap").map

local M = {}

M.on_attach = function(client, bufnr)
  local mapBufnr = function(mode, configs)
    configs.buffer = bufnr
    map(mode, configs)
  end

  mapBufnr("n", { "gD", vim.lsp.buf.declaration, "LSP Go to declaration" })
  mapBufnr("n", { "gd", vim.lsp.buf.definition, "LSP Go to definition" })
  mapBufnr("n", { "gi", vim.lsp.buf.implementation, "LSP Go to implementation" })
  mapBufnr("n", { "gr", vim.lsp.buf.references, "LSP Go to references" })
  mapBufnr("n", { "<leader>D", vim.lsp.buf.type_definition, "LSP Go to type definition" })

  mapBufnr("n", { "K", vim.lsp.buf.hover, "LSP Hover" })
  mapBufnr("n", { "<leader>sh", vim.lsp.buf.signature_help, "LSP Signature help" })

  mapBufnr("n", { "<leader>wa", vim.lsp.buf.add_workspace_folder, "LSP Add workspace folder" })
  mapBufnr("n", { "<leader>wr", vim.lsp.buf.remove_workspace_folder, "LSP Remove workspace folder" })
  mapBufnr("n", {
    "<leader>wl",
    function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end,
    "LSP List workspace folders",
  })

  mapBufnr("n", { "<leader>rn", vim.lsp.buf.rename, "LSP Rename" })
  mapBufnr("n", { "<leader>ca", vim.lsp.buf.code_action, "LSP Code Action" })
  mapBufnr("n", { "<leader>fm", vim.lsp.buf.format, "LSP Format" })
end

-- disable semanticTokens
M.on_init = function(client, _)
  if client.supports_method "textDocument/semanticTokens" then
    client.server_capabilities.semanticTokensProvider = nil
  end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}
capabilities.offsetEncoding = { "utf-16" } -- C/C++ configs
capabilities.textDocument.foldingRange = { -- Folding configs
  dynamicRegistration = false,
  lineFoldingOnly = true,
}

M.capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

return M
