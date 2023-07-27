local M = {}

M.add = {
  IndentBlanklineIndent1 = { fg = "#ff8888", nocombine = true },
  IndentBlanklineIndent2 = { fg = "#88ffff", nocombine = true },
  IndentBlanklineIndent3 = { fg = "#88ff88", nocombine = true },
  IndentBlanklineIndent4 = { fg = "#ff88ff", nocombine = true },
  IndentBlanklineIndent5 = { fg = "#8888ff", nocombine = true },
  IndentBlanklineIndent6 = { fg = "#ffff88", nocombine = true },

  DapBreakPoint = { fg = "#ff0000" },

  IlluminatedWordText = { bg = "#2a2a2a", underline = true },
  IlluminatedWordRead = { link = "IlluminatedWordText" },
  IlluminatedWordWrite = { link = "IlluminatedWordText" },
}

M.override = {
  IndentBlanklineContextChar = { fg = "#8a2be2", nocombine = true },
  IndentBlanklineContextSpaceChar = { fg = "#8a2be2", nocombine = true },
  IndentBlanklineContextStart = { sp = "#8a2be2", underline = true },

  Comment = { italic = true },
}

return M
