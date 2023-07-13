local diag_icons = require "custom.icons".diagnostics

local M = {
  position = "bottom",

  height = 10,
  width = 50,

  mode = "workspace_diagnostics",

  fold_open = "",
  fold_closed = "",

  icons = true,
  group = true,
  padding = true,

  indent_lines = true,
  auto_open = false,
  auto_close = false,
  auto_preview = true,
  auto_fold = false,

  auto_jump = { "lsp_definitions" },
  signs = {
    error       = diag_icons.error,
    warning     = diag_icons.warning,
    hint        = diag_icons.hint,
    information = diag_icons.information,
    other       = diag_icons.default,
  },

  use_diagnostic_signs = false,
}

return M
