local notify = require "notify"

local diag_icons = require("custom.icons").diagnostics

notify.setup {
  render = "default",
  stages = "fade_in_slide_out",

  on_open = nil,
  on_close = nil,

  timeout = 175,
  background_colour = "#000000",
  minimum_width = 10,

  icons = {
    ERROR = diag_icons.error,
    WARN = diag_icons.warning,
    INFO = diag_icons.information,
    DEBUG = diag_icons.debug,
    TRACE = diag_icons.trace,
  },
}

vim.notify = notify
