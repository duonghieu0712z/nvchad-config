local builtin = require "statuscol.builtin"

require("statuscol").setup {
  setopt = true,
  thousands = false,
  relculright = true,

  ft_ignore = nil,
  bt_ignore = { "nofile", "help", "quickfix", "terminal", "prompt" },

  segments = {
    {
      sign = { name = { ".*" }, colwidth = 2 },
      click = "v:lua.ScSa",
    },
    {
      text = { builtin.lnumfunc, " " },
      click = "v:lua.ScLa",
    },
    {
      sign = { name = { "GitSigns*" }, colwidth = 1 },
      click = "v:lua.ScSa",
    },
    {
      text = { builtin.foldfunc, " " },
      click = "v:lua.ScFa",
    },
  },
}
