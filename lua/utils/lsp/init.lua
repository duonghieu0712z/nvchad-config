local diag_icons = require("ui.icons").diagnostics

local lspSymbol = function(name, icon)
  local hl = "DiagnosticSign" .. name
  vim.fn.sign_define(hl, { text = icon, numhl = hl, texthl = hl })
end

lspSymbol("Error", diag_icons.error)
lspSymbol("Warn", diag_icons.warning)
lspSymbol("Info", diag_icons.information)
lspSymbol("Hint", diag_icons.hint)

vim.diagnostic.config {
  virtualtext = {
    prefix = "",
  },
  signs = true,
  underline = true,
  update_in_insert = true,

  float = {
    border = "rounded",
  },
}
