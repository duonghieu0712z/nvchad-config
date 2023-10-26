local new_maker = function(filepath, bufnr, opts)
  local previewers = require "telescope.previewers"
  local Job = require "plenary.job"

  filepath = vim.fn.expand(filepath)
  Job:new({
    command = "file", -- Require having `file` command.
    args = { "--mime-type", "-b", filepath },
    on_exit = function(job)
      local mime_type = vim.split(job:result()[1], "/")[1]
      if mime_type == "text" then
        previewers.buffer_previewer_maker(filepath, bufnr, opts)
      else
        vim.schedule(function()
          vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "THIS IS BINARY FILE" })
        end)
      end
    end,
  }):sync()
end

local M = {
  defaults = {
    file_ignore_patterns = { "node_modules", "vendor" },
    buffer_previewer_maker = new_maker,
  },
  extensions_list = { "themes", "terms", "fzf", "dap", "lsp_handlers", "noice", "notify" },
}

return M
