local map = require("utils.keymap").map

-- General
map("n", { "<esc>", "<cmd>noh<cr>", "General Clear highlights" })

map("n", { "H", "^", "General Move to beginning of line" })
map("n", { "L", "$", "General Move to end of line" })

map("n", { "<leader>ch", "<cmd>NvCheatsheet<cr>", "General Cheatsheet" })
map("n", { "<leader>fm", function() end, "General Format file" })

map("n", { "<C-h>", "<C-w>h", "Window Move window left" })
map("n", { "<C-j>", "<C-w>j", "Window Move window down" })
map("n", { "<C-k>", "<C-w>k", "Window Move window up" })
map("n", { "<C-l>", "<C-w>l", "Window Move window right" })
map("n", { "<C-x>", "<C-w>q", "Window Close window" })
map("n", { "<C-o>", "<C-w>o", "Window Only window" })

map("n", { "<C-q>", "<cmd>qa<cr>", "Window Quit" })
map("n", { "<C-s>", "<cmd>w<cr>", "Window Save file" })
map("n", { "<C-c>", "<cmd>%y+<cr>", "Window Copy file" })

map({ "n", "v", "x" }, { "j", "v:count || mode()[0:1] == 'no' ? 'j' : 'gj'", "General Move down", expr = true })
map({ "n", "v", "x" }, { "k", "v:count || mode()[0:1] == 'no' ? 'k' : 'gk'", "General Move up", expr = true })
map({ "n", "v", "x" }, { "<down>", "v:count || mode()[0:1] == 'no' ? 'j' : 'gj'", "General Move down", expr = true })
map({ "n", "v", "x" }, { "<up>", "v:count || mode()[0:1] == 'no' ? 'k' : 'gk'", "General Move up", expr = true })

map("i", { "jk", "<Esc>", "General Escape insert mode" })

map("i", { "<C-b>", "<home>", "General Go to beginning of line" })
map("i", { "<C-e>", "<end>", "General Go to end of line" })
map("i", { "<C-h>", "<left>", "General Move left" })
map("i", { "<C-j>", "<down>", "General Move down" })
map("i", { "<C-k>", "<up>", "General Move up" })
map("i", { "<C-l>", "<right>", "General Move right" })

-- LSP
map("n", { "<leader>lf", vim.diagnostic.open_float, "LSP Show diagnostic in floating window" })
map("n", { "[d", vim.diagnostic.goto_prev, "LSP Go to previous diagnostic" })
map("n", { "]d", vim.diagnostic.goto_next, "LSP Go to next diagnostic" })
map("n", { "<leader>q", vim.diagnostic.setloclist, "LSP Open diagnostics in loclist" })

-- Tabufline
map("n", { "<leader>b", "<cmd>enew<cr>", "Buffer New buffer" })
map("n", {
  "<tab>",
  function()
    require("nvchad.tabufline").next()
  end,
  "Buffer Go to next buffer",
})
map("n", {
  "<s-tab>",
  function()
    require("nvchad.tabufline").prev()
  end,
  "Buffer Go to previous buffer",
})
map("n", {
  "<leader>x",
  function()
    require("nvchad.tabufline").close_buffer()
  end,
  "Buffer Close current buffer",
})

-- Telescope
map("n", { "<leader>ff", "<cmd>Telescope find_files<cr>", "Telescope Find files" })

-- Easymotion
map({ "n", "v" }, { "<leader>gw", "<cmd>HopWord<cr>", "Easymotion Go to word" })
map({ "n", "v" }, { "<leader>gl", "<cmd>HopLine<cr>", "Easymotion Go to line" })

-- Trouble
map("n", { "<leader>mx", "<cmd>TroubleToggle<cr>", "Trouble Toggle trouble" })
map("n", { "<leader>mw", "<cmd>TroubleToggle workspace_diagnostics<cr>", "Trouble Toggle workspace diagnostics" })
map("n", { "<leader>md", "<cmd>TroubleToggle document_diagnostics<cr>", "Trouble Toggle document diagnostics" })
map("n", { "<leader>mq", "<cmd>TroubleToggle quickfix<cr>", "Trouble Toggle quickfix" })
map("n", { "<leader>ml", "<cmd>TroubleToggle loclist<cr>", "Trouble Toggle loclist" })
map("n", { "<leader>mI", "<cmd>TroubleToggle lsp_implementations<cr>", "Trouble Toggle LSP implementations" })
map("n", { "<leader>mR", "<cmd>TroubleToggle lsp_references<cr>", "Trouble Toggle LSP references" })
map("n", { "<leader>mD", "<cmd>TroubleToggle lsp_definitions<cr>", "Trouble Toggle LSP definitions" })
map("n", { "<leader>mT", "<cmd>TroubleToggle lsp_type_definitions<cr>", "Trouble Toggle LSP type definitions" })

-- Diffview
map("n", { "<leader>do", "<cmd>DiffviewOpen<cr>", "Diffview Open" })
map("n", { "<leader>dc", "<cmd>DiffviewClose<cr>", "Diffview Close" })
map("n", { "<leader>dh", "<cmd>DiffviewFileHistory<cr>", "Diffview File history" })

-- Guess indent
map({ "n", "v" }, { "<leader>gi", "<cmd>GuessIndent<cr>", "General Guess indent" })
