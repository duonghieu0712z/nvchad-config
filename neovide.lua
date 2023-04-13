local g = vim.g

local transparency = 0.92

local alpha = function()
  return string.format("%x", math.floor(255 * vim.g.transparency or transparency))
end

if g.neovide then
  g.guifont = "CaskaydiaCove NF:h12"

  g.neovide_transparency = transparency
  g.transparency = transparency
  g.neovide_background_color = "#0f1117" .. alpha()
end
