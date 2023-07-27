local icons = require "custom.icons"
local diag_icons = icons.diagnostics

local M = {
  cmdline = {
    enabled = true,
    view = "cmdline_popup",
  },

  messages = {
    enabled = true,
    view = "notify",
    view_error = "notify",
    view_warn = "notify",
    view_history = "messages",
    view_search = "virtualtext",
  },

  popupmenu = {
    enabled = true,
    backend = "nui",
    kind_icons = {},
  },

  redirect = {
    view = "popup",
    filter = { event = "msg_show" },
  },

  commands = {},

  notify = {
    enabled = true,
    view = "notify",
  },

  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },

    progress = {
      enabled = true,
    },

    hover = {
      enabled = true,
    },

    signature = {
      enabled = false,
    },

    message = {
      enabled = true,
    },

    documentation = {
      enabled = true,
    },
  },

  presets = {
    bottom_search = false,
    command_palette = true,
    long_message_to_split = true,
    inc_rename = true,
    lsp_doc_border = true,
  },

  format = {
    level = {
      icons = {
        error = diag_icons.error,
        warn = diag_icons.warning,
        info = diag_icons.information,
      },
    },
  },
}

return M
