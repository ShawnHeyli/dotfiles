local M = {}

M.disabled = {
  n = {
    ["<leader>n"] = "",
    ["<leader>q"] = "",
    ["<leader>e"] = "",
    ["<leader>fm"] = "",
    ["<leader>rn"] = "",
    ["<C-n>"] = "",
    ["<C-k>"] = "",
    ["<C-j>"] = "",
    ["<C-l>"] = "",
    ["<C-h>"] = "",
    ["<leader>ca"] = "",
    ["<leader>ra"] = "",
    ["<leader>lf"] = "",
    ["<A-i>"] = "",
    ["<leader>fh"] = "",
    ["<leader>pt"] = "",
    ["<leader>cm"] = "",
    ["<leader>ma"] = "",
    ["<leader>fw"] = "",
  },

  v = {
    ["<leader>ca"] = "",
    ["<A-i>"] = ""
  }
}

M.general = {
  n = {
    ["<leader>n"] = {
      "<cmd> NvimTreeToggle <CR>",
      "Toggle File Tree"
    }
  }
}

M.window = {
  n = {
    ["<leader>wh"] = { "<C-w>h", "Window left" },
    ["<leader>wl"] = { "<C-w>l", "Window right" },
    ["<leader>wj"] = { "<C-w>j", "Window down" },
    ["<leader>wk"] = { "<C-w>k", "Window up" },
  }
}

M.copilot = {
  n = {
    ["<leader>cc"] = { "<cmd> Copilot toggle <CR>", "Copilot toggle" },
  }
}

M.nvterm = {
  n = {
    ["<A-f>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    }
  },

  v = {
    ["<A-f>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    }
  }
}

M.telescope = {
  n = {
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "Find all" },
    ["<leader>fg"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
    ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "Find oldfiles" },
    ["<leader>fz"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },
    ["<leader>gc"] = { "<cmd> Telescope git_commits <CR>", "Git commits" },
    ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "Git status" },
    ["<leader>th"] = { "<cmd> Telescope themes <CR>", "Nvchad themes" },
    ["<leader>fb"] = { "<cmd> Telescope marks <CR>", "telescope bookmarks" },
    ["<leader>fp"] = { "<cmd> Telescope project <CR>", "telescope project switcher" }
  }
}

M.lsp = {
  n = {
    ["<leader>k"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["gD"] = {
      function()
        vim.lsp.buf.declaration()
      end,
      "LSP declaration",
    },

    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["gr"] = {
      function()
        vim.lsp.buf.references()
      end,
      "LSP references",
    },

    ["gi"] = {
      function()
        vim.lsp.buf.implementation()
      end,
      "LSP implementation",
    },

    ["<leader>lm"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },

    ["<leader>ls"] = {
      function()
        vim.lsp.buf.signature_help()
      end,
      "LSP signature help",
    },

    ["<leader>D"] = {
      function()
        vim.lsp.buf.type_definition()
      end,
      "LSP definition type",
    },

    ["<leader>lr"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["<leader>ld"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev { float = { border = "rounded" } }
      end,
      "Goto prev",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next { float = { border = "rounded" } }
      end,
      "Goto next",
    },

    ["<leader>wa"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },

    ["<leader>wr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>wl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },
  },

  v = {
    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },
  },
}

M.debugger = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    }
  }
}

return M
