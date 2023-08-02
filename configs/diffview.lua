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
    merge_tool = {
      layout = "diff3_mixed",
    },
  },

  hooks = {
    diff_buf_read = function(bufnr)
      vim.opt_local.wrap = false
    end,
  },
}

return M
