local filetypes = {
  "html",
  "css",
  "scss",
  "javascript",
  "javascriptreact",
  "typescript",
  "typescriptreact",
  "lua",
  "markdown",
  "json",
  "xml",
  "yaml",
  "toml",
}

local M = {
  max_lines = 2048,
  standard_widths = { 2, 4 },
  skip_multiline = false,
  filetype_ = {
    standard_widths = { 2, 4 },
  },
}

for _, v in ipairs(filetypes) do
  M["filetype_" .. v] = {
    standard_widths = { 2 },
  }
end

return M
