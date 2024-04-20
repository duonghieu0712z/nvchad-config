local options = require "nvchad.configs.nvimtree"
local tbl = require "utils.table"
local diag_icons = require("ui.icons").diagnostics

options.reload_on_bufenter = true

options.renderer = tbl.mergeForce(options.renderer, {
  highlight_git = "icon",
  highlight_diagnostics = "icon",
  highlight_opened_files = "name",
  highlight_modified = "icon",
  highlight_bookmarks = "icon",
  highlight_clipboard = "name",

  icons = {
    git_placement = "after",
    modified_placement = "before",
    diagnostics_placement = "signcolumn",
    bookmarks_placement = "signcolumn",
  },
})

options.filters = {
  git_ignored = true,
  dotfiles = false,
  custom = {
    ".git",
    "**/*.meta",
    "**/.DS_Store",
  },
}

options.diagnostics = {
  enable = true,
  icons = {
    error = diag_icons.error,
    warn = diag_icons.warn,
    info = diag_icons.info,
    hint = diag_icons.hint,
  },
}

return options
