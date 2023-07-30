local home = vim.fn.expand "$HOME"

local M = {
  api_key_cmd = "gpg -d " .. home .. "/openai.txt.gpg",
  popup_layout = {
    default = "right",
  },
  popup_input = {
    submit = "<Enter>",
  },
  openai_params = {
    max_tokens = 10000,
  },
}

return M
