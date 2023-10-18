local cmp = require "cmp"
local luasnip = require "luasnip"

dofile(vim.g.base46_cache .. "cmp")

local cmp_ui = require("core.utils").load_config().ui.cmp
local cmp_style = cmp_ui.style

local has_words_before = function()
  unpack = unpack or table.unpack
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match "[%a.]" ~= nil
end

local M = {}

M.enabled = function()
  return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt" or require("cmp_dap").is_dap_buffer()
end

M.window = {
  documentation = {
    border = "rounded",
    winhighlight = "Normal:CmpPmenu,CursorLine:CmpSel,Search:PmenuSel",
  },
}

M.formatting = {
  format = function(_, item)
    local icons = require("custom.icons").kind_icons
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

M.mapping = {
  ["<CR>"] = cmp.mapping {
    i = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Insert, select = true },
    s = cmp.mapping.confirm { select = true },
    c = cmp.mapping.confirm { behavior = cmp.ConfirmBehavior.Replace, select = true },
  },

  ["<Down>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_next_item()
    elseif luasnip.expand_or_jumpable() then
      luasnip.expand_or_jump()
    elseif has_words_before() then
      cmp.complete()
    else
      fallback()
    end
  end, { "i", "s" }),

  ["<Up>"] = cmp.mapping(function(fallback)
    if cmp.visible() then
      cmp.select_prev_item()
    elseif luasnip.jumpable(-1) then
      luasnip.jump(-1)
    else
      fallback()
    end
  end, { "i", "s" }),
}

M.sources = {
  { name = "nvim_lsp" },
  { name = "luasnip" },
  { name = "buffer" },
  { name = "nvim_lua" },
  { name = "path" },
  { name = "nvim_lsp_signature_help" },
}

return M
