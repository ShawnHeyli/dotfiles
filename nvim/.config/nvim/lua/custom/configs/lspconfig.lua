local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities
local utils = require "lspconfig/util"
local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

-- lspconfig.rust_analyzer.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetypes = { "rust" },
--   root_dir = utils.root_pattern("Cargo.toml", "rust-project.json"),
--   settings = {
--     ["rust-analyzer"] = {
--       cargo = {
--         allFeatures = true,
--       },
--     },
--   },
-- }
