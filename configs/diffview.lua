local M = {
  diff_binaries = false,
  enhanced_diff_hl = false,
  use_icons = true,
  show_help_hints = true,
  watch_index = true,

  icons = {
    folder_closed = "",
    folder_open = "",
  },
  signs = {
    fold_closed = "",
    fold_open = "",
    done = "✓",
  },

  view = {
    default = {
      winbar_info = true,
    },
    merge_tool = {
      layout = "diff3_mixed",
    },
    file_history = {
      winbar_info = true,
    },
  },

  hooks = {
    diff_buf_read = function(bufnr)
      vim.opt_local.wrap = false
    end,
  },
}

return M
