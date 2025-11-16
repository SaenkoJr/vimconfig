-- [nfnl] fnl/dotfiles/lsp/init.fnl
local lu = require("dotfiles.lsp.utils")
local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lint = require("lint")
local lint_parser = require("lint.parser")
do
  local code_action = require("lsputil.codeAction")
  local symbols = require("lsputil.symbols")
  local locations = require("lsputil.locations")
  vim.lsp.handlers["textDocument/codeAction"] = code_action.code_action_handler
  vim.lsp.handlers["textDocument/documentSymbol"] = symbols.document_handler
  vim.lsp.handlers["textDocument/symbol"] = symbols.workspace_handler
  vim.lsp.handlers["textDocument/symbol"] = symbols.workspace_handler
  vim.lsp.handlers["textDocument/declaration"] = locations.declaration_handler
  vim.lsp.handlers["textDocument/definition"] = locations.definition_handler
  vim.lsp.handlers["textDocument/implementation"] = locations.implementation_handler
  vim.lsp.handlers["textDocument/references"] = locations.references_handler
  vim.lsp.handlers["textDocument/typeDefinition"] = locations.typeDefinition_handler
end
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {virtual_text = {prefix = "\226\150\160"}})
local servers = {"clojure_lsp", "ruby_lsp", "lua_ls", "ts_ls", "sqls", "fennel_language_server", "tailwindcss", "rust_analyzer", "pylsp", "pyright", "elixirls"}
mason.setup({PATH = "append", log_level = vim.log.levels.INFO, max_concurrent_installers = 4, registries = {"github:mason-org/mason-registry"}, providers = {"mason.providers.registry-api", "mason.providers.client"}, ui = {border = "rounded", height = 0.7}})
mason_lspconfig.setup({ensure_installed = servers, automatic_enable = false})
vim.diagnostic.config({virtual_text = true, float = {border = "rounded"}})
vim.lsp.config("*", {on_attach = lu["on-attach"], capabilities = lu.capabilities})
local servers_configs_names = {"ruby_lsp", "pyright", "ts_ls"}
for _, server_name in ipairs(servers_configs_names) do
  local server_config = lu["safe-require-server-config"](server_name)
  vim.lsp.enable(server_name)
  vim.lsp.config(server_name, server_config.config)
end
lint["linters_by_ft"] = {javascript = {"eslint_d"}, typescript = {"eslint_d"}, javascriptreact = {"eslint_d"}, typescriptreact = {"eslint_d"}, python = {}, ruby = {"rubocop"}}
local function _1_()
  return lint.try_lint()
end
return vim.api.nvim_create_autocmd({"BufWritePost", "BufEnter", "InsertLeave"}, {callback = _1_})
