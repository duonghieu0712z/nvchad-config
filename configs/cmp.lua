local cmp = require "cmp"

-- cmp.setup.filetype("gitcommit", {
--   sources = cmp.config.sources({
--     { name = "cmp_git" },
--   }, {
--     { name = "buffer" },
--   }),
-- })

-- cmp.setup.cmdline({ "/", "?" }, {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = {
--     { name = "buffer" },
--   },
-- })

-- cmp.setup.cmdline(":", {
--   mapping = cmp.mapping.preset.cmdline(),
--   sources = cmp.config.sources({
--     { name = "path" },
--   }, {
--     { name = "cmdline" },
--   }),
-- })

local options = {
  -- sources = {
  --   { name = "nvim_lsp" },
  --   { name = "luasnip" },
  --   { name = "buffer" },
  --   { name = "nvim_lua" },
  --   { name = "path" },
  -- },
}

return options
