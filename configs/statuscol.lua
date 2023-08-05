local builtin = require "statuscol.builtin"

require("statuscol").setup {
  setopt = true,
  thousands = false,
  relculright = true,

  ft_ignore = nil,
  bt_ignore = { "nofile" },

  segments = {
    {
      sign = { name = { "GitSigns*" }, colwidth = 1 },
      click = "v:lua.ScSa",
    },
    {
      sign = { name = { ".*" }, auto = true },
      click = "v:lua.ScSa",
    },
    { text = { builtin.lnumfunc }, click = "v:lua.ScLa" },
    { text = { " ", builtin.foldfunc, " " }, click = "v:lua.ScFa" },
  },
}
