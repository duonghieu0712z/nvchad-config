local g = vim.g
local o = vim.o

local transparency = 0.92

local alpha = function()
  return string.format("%x", math.floor(255 * g.transparency or transparency))
end

local change_scale_factor = function(delta)
  vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
end

local opts = {
  silent = true,
  noremap = true,
  nowait = true,
}

local mappings = {
  plugin = true,

  [""] = {
    ["<A-0>"] = {
      function()
        vim.g.neovide_scale_factor = 1
      end,
      "Reset font size",
      opts,
    },
    ["<A-=>"] = {
      function()
        change_scale_factor(1.25)
      end,
      "Increase font size",
      opts,
    },
    ["<A-->"] = {
      function()
        change_scale_factor(0.8)
      end,
      "Decrease font size",
      opts,
    },
  },

  n = {
    ["<leader>tn"] = {
      function()
        vim.g.neovide_transparency = vim.g.neovide_transparency == 1 and transparency or 1
      end,
      "Toggle Neovide transparency",
      opts,
    },
  },
}

if g.neovide then
  o.guifont = "FiraCode Nerd Font:h11"

  g.neovide_transparency = transparency
  g.transparency = transparency
  g.neovide_background_color = "#0f1117" .. alpha()

  g.neovide_hide_mouse_when_typing = true
  g.neovide_scale_factor = 1.0

  require("custom.mappings").neovide = mappings
  require("core.utils").load_mappings "neovide"
end
