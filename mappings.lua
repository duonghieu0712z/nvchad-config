---@diagnostic disable: different-requires
local M = {}

local opts = {
  silent = true,
  noremap = true,
  nowait = true,
}

-- Disabled default keymaps
M.disabled = {}

M.custom = {
  n = {
    ["<leader>q"] = { ":qa<CR>", "Quit", opts },
    ["<leader>s"] = { ":w<CR>", "Save file", opts },

    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "Toggle transparency",
      opts,
    },

    ["<C-q>"] = { "<C-w>q", "Close window", opts },
    ["<C-o>"] = { "<C-w>o", "Only window", opts },
  },

  i = {
    ["jk"] = { "<ESC>", "Escape insert mode", opts },
    ["<C-v>"] = { "<C-r>*", "Paste", opts },
  },
}

M.nvterm = {
  t = {
    ["<ESC>"] = { "<C-\\><C-n>", "Escape insert terminal mode", opts },
    ["jk"] = { "<C-\\><C-n>", "Escape insert terminal mode", opts },

    ["<C-h>"] = { "<C-\\><C-n><C-w>h", "Window left", opts },
    ["<C-l>"] = { "<C-\\><C-n><C-w>l", "Window right", opts },
    ["<C-j>"] = { "<C-\\><C-n><C-w>j", "Window down", opts },
    ["<C-k>"] = { "<C-\\><C-n><C-w>k", "Window up", opts },

    ["<C-q>"] = { "<C-\\><C-n><C-w>q", "Close terminal", opts },
  },

  n = {
    ["<leader>i"] = {
      function()
        require("nvterm.terminal").new "float"
      end,
      "New floating term",
      opts,
    },
  },
}

M.dap = {
  plugin = true,

  n = {
    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
      "Continue",
      opts,
    },
    ["<F9>"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint",
      opts,
    },
    ["<F10>"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
      opts,
    },
    ["<F11>"] = {
      function()
        require("dap").step_into()
      end,
      "Step into",
      opts,
    },
    ["<F12>"] = {
      function()
        require("dap").step_out()
      end,
      "Step out",
      opts,
    },
  },
}

M.ufo = {
  plugin = true,

  n = {
    ["zR"] = {
      function()
        require("ufo").openAllFolds()
      end,
      "Open all folds",
      opts,
    },
    ["zM"] = {
      function()
        require("ufo").closeAllFolds()
      end,
      "Close all folds",
      opts,
    },
    ["zr"] = {
      function()
        require("ufo").openFoldsExceptKinds()
      end,
      "Open folds except kinds",
      opts,
    },
    ["zm"] = {
      function()
        require("ufo").closeFoldsExceptKinds()
      end,
      "Close folds except kinds",
      opts,
    },
    ["K"] = {
      function()
        local winid = require("ufo").peekFoldedLinesUnderCursor()
        if not winid then
          vim.lsp.buf.hover()
        end
      end,
      "LSP hover",
      opts,
    },
  },
}

M.trouble = {
  plugin = true,

  n = {
    ["<leader>mx"] = {
      "<cmd>TroubleToggle<cr>",
      "Toggle trouble",
      opts,
    },
    ["<leader>mw"] = {
      "<cmd>TroubleToggle workspace_diagnostics<cr>",
      "Toggle trouble workspace diagnostics",
      opts,
    },
    ["<leader>md"] = {
      "<cmd>TroubleToggle document_diagnostics<cr>",
      "Toggle trouble document diagnostics",
      opts,
    },
    ["<leader>mq"] = {
      "<cmd>TroubleToggle quickfix<cr>",
      "Toggle trouble quickfix",
      opts,
    },
    ["<leader>ml"] = {
      "<cmd>TroubleToggle loclist<cr>",
      "Toggle trouble loclist",
      opts,
    },
    ["<leader>mD"] = {
      "<cmd>TroubleToggle lsp_definitions<cr>",
      "Toggle trouble LSP definitions",
      opts,
    },
    ["<leader>mT"] = {
      "<cmd>TroubleToggle lsp_type_definitions<cr>",
      "Toggle trouble LSP type definitions",
      opts,
    },
    ["gR"] = {
      "<cmd>TroubleToggle lsp_references<cr>",
      "Toggle trouble LSP references",
      opts,
    },
  },
}

M.chatgpt = {
  plugin = true,

  [""] = {
    ["<leader>cg"] = { "<cmd>ChatGPT<cr>", "Chat GPT", opts },
    -- ["<leader>ca"] = { "<cmd>ChatGPTActAs<cr>", "Chat GPT Act As", opts },
    -- ["<leader>ce"] = { "<cmd>ChatGPTEditWithInstructions<cr>", "Chat GPT Edit With Instructions", opts },
    -- ["<leader>cd"] = { "<cmd>ChatGPTCompleteCode<cr>", "Chat GPT Complete Code", opts },
    -- ["<leader>cr"] = { "<cmd>ChatGPTRun<cr>", "Chat GPT Run", opts },
  },
}

M.codeium = {
  plugin = true,

  i = {
    ["<C-Enter>"] = {
      function()
        return vim.fn["codeium#Accept"]()
      end,
      "Codeium accept",
      opts,
    },
    ["<C-\\>"] = {
      function()
        return vim.fn["codeium#Accept"]()
      end,
      "Codeium accept",
      opts,
    },
    ["<C-Down>"] = {
      function()
        return vim.fn["codeium#CycleCompletions"](1)
      end,
      "Codeium next completions",
      opts,
    },
    ["<C-Up>"] = {
      function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end,
      "Codeium previous completions",
      opts,
    },
    ["<C-x>"] = {
      function()
        return vim.fn["codeium#Clear"]()
      end,
      "Codeium clear",
      opts,
    },
  },
}

return M
