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
      condition = { true, builtin.no_empty },
      click = "v:lua.ScLa",
    },
    {
      sign = { namespace = { "gitsigns" }, colwidth = 1 },
      click = "v:lua.ScSa",
    },
    {
      text = { builtin.foldfunc, " " },
      condition = { true, builtin.no_empty },
      click = "v:lua.ScFa",
    },
  },
}
