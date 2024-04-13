local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "custom.configs.lspconfig"
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require "custom.configs.telescope"
    end
  },
  {
    "nvim-telescope/telescope-media-files.nvim"
  },
  {
    "nvim-telescope/telescope-project.nvim"
  },
  {
    "zbirenbaum/copilot.lua",
    -- Lazy load when event occurs. Events are triggered
    -- as mentioned in: https://vi.stackexchange.com/a/4495/20389
    -- event = "InsertEnter",
    lazy = false,
    opts = {
      suggestion = {
        auto_trigger = true
      }
    },
  },
  {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    ft = { 'rust' },
  },
  {
    "stevearc/conform.nvim",
    lazy = false,
    config = function()
      require "custom.configs.conform"
    end,
  }
}
return plugins
