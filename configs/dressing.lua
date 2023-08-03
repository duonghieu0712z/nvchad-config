local M = {
  select = {
    get_config = function(opts)
      print(opts.kind)
      if opts.kind == "codeaction" then
        return {
          telescope = require("telescope.themes").get_cursor {},
        }
      end
    end,
  },
}

return M
