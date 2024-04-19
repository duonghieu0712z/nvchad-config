local options = require "nvchad.configs.gitsigns"

options.signs = {
  add = { text = "▎" },
  change = { text = "▎" },
  delete = { text = "▁" },
  topdelete = { text = "▔" },
  changedelete = { text = "~" },
  untracked = { text = "▎" },
}

return options
