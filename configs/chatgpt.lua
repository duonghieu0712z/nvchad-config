local home = vim.fn.expand "$HOME"

local M = {
  api_key_cmd = "gpg --decrypt " .. home .. "/openai.txt.gpg",
  popup_layout = {
    default = "right",
  },
}

return M
