local M = {}

M.add = {
  IndentBlanklineIndent1 = { fg = "#ff8888" },
  IndentBlanklineIndent2 = { fg = "#88ffff" },
  IndentBlanklineIndent3 = { fg = "#88ff88" },
  IndentBlanklineIndent4 = { fg = "#ff88ff" },
  IndentBlanklineIndent5 = { fg = "#8888ff" },
  IndentBlanklineIndent6 = { fg = "#ffff88" },

  DapBreakPoint = { fg = "#ff0000" },

  IlluminatedWordText = { sp = "#ff7f50", bold = true, underdotted = true },
  IlluminatedWordRead = { link = "IlluminatedWordText" },
  IlluminatedWordWrite = { link = "IlluminatedWordText" },
}

M.override = {
  IndentBlanklineContextChar = { fg = "#8a2be2" },
  IndentBlanklineContextSpaceChar = { fg = "#8a2be2" },
  IndentBlanklineContextStart = { sp = "#8a2be2", underline = true },

  Comment = { italic = true },

  DiffAdd = { link = "diffNewFile" },
  DiffChange = { fg = "#ffa500" },
}

return M
