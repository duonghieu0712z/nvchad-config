local M = {}

M.add = {
  DapBreakPoint = { fg = "#ff0000" },

  IlluminatedWordText = { sp = "#ff7f50", bold = true, underdotted = true },
  IlluminatedWordRead = { link = "IlluminatedWordText" },
  IlluminatedWordWrite = { link = "IlluminatedWordText" },
}

M.override = {
  Comment = { italic = true },

  DiffChange = { link = "PreProc" },
}

return M
