local g = vim.g
local o = vim.o

local transparency = 0.92

local alpha = function()
  return string.format("%x", math.floor(255 * g.transparency or transparency))
end

if g.neovide then
  o.guifont = "FiraCode Nerd Font:h11"

  g.neovide_transparency = transparency
  g.transparency = transparency
  g.neovide_background_color = "#0f1117" .. alpha()

  g.neovide_hide_mouse_when_typing = true
  g.neovide_scale_factor = 1.0
end
