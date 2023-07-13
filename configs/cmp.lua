local M = {}

dofile(vim.g.base46_cache .. "cmp")

local cmp_ui = require "core.utils".load_config().ui.cmp
local cmp_style = cmp_ui.style

M.formatting = {
  format = function(_, item)
    local icons = require "custom.icons".kind_icons
    local icon = (cmp_ui.icons and icons[item.kind]) or ""

    if cmp_style == "atom" or cmp_style == "atom_colored" then
      icon = " " .. icon .. " "
      item.menu = cmp_ui.lspkind_text and "   (" .. item.kind .. ")" or ""
      item.kind = icon
    else
      icon = cmp_ui.lspkind_text and (" " .. icon .. " ") or icon
      item.kind = string.format("%s %s", icon, cmp_ui.lspkind_text and item.kind or "")
    end

    return item
  end,
}

return M
