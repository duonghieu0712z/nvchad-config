local diag_icons = require("custom.icons").diagnostics

local M = {
  render = "default",
  stages = "static",

  timeout = 1000,
  fps = 30,
  top_down = true,

  icons = {
    ERROR = diag_icons.error,
    WARN = diag_icons.warning,
    INFO = diag_icons.information,
    DEBUG = diag_icons.debug,
    TRACE = diag_icons.trace,
  },
}

return M
