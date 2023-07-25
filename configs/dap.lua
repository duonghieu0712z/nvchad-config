local mason_dap = require "mason-nvim-dap"

mason_dap.setup {
  ensure_installed = {},
  automatic_installation = true,
  handlers = {
    function(config)
      mason_dap.default_setup(config)
    end,
  },
}
