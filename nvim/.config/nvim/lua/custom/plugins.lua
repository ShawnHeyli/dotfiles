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
    "zbirenbaum/copilot.lua",
    -- Lazy load when event occurs. Events are triggered
    -- as mentioned in: https://vi.stackexchange.com/a/4495/20389
    event = "InsertEnter",
    -- lazy = false,
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
