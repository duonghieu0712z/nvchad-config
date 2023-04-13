require("mason-nvim-dap").setup {
  automatic_installation = true,
  automatic_setup = true,
}

require("mason-nvim-dap").setup_handlers {
  function(source_name)
    require "mason-nvim-dap.automatic_setup"(source_name)
  end,
}
