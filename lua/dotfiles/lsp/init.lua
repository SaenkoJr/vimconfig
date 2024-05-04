-- [nfnl] Compiled from fnl/dotfiles/lsp/init.fnl by https://github.com/Olical/nfnl, do not edit.
local lu = require("dotfiles.lsp.utils")
local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
do
  local code_action = require("lsputil.codeAction")
  local symbols = require("lsputil.symbols")
  local locations = require("lsputil.locations")
  do end (vim.lsp.handlers)["textDocument/codeAction"] = code_action.code_action_handler
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
mason.setup({PATH = "append"})
mason_lspconfig.setup({ensure_installed = {"solargraph", "tsserver", "lua_ls", "clojure_lsp", "fennel_language_server"}})
local servers = {"hls", "clojure_lsp", "solargraph", "lua_ls", "tsserver", "sqls", "fennel_language_server"}
for _, server_name in ipairs(servers) do
  local server = lu["safe-require-server-config"](server_name)
  local lsp = lspconfig[server_name]
  lsp.setup(server.build(lu["on-attach"], lu.capabilities))
end
return nil
