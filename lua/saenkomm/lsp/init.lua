-- [nfnl] Compiled from fnl/saenkomm/lsp/init.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.lsp.init, {[require] = {[lu] = saenkomm.lsp.utils, [core] = aniseed.core, lspconfig = lspconfig, mason = mason, ["mason-lspconfig"] = __fnl_global__mason_2dlspconfig, ["null-ls"] = __fnl_global__null_2dls, ["mason-null-ls"] = __fnl_global__mason_2dnull_2dls}})
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
__fnl_global__mason_2dlspconfig.setup({ensure_installed = {"solargraph", "tsserver", "lua_ls", "clojure_lsp"}})
__fnl_global__null_2dls.setup({diagnostics_format = "[#{c}] #{m} (#{s})", sources = {__fnl_global__null_2dls.builtins.diagnostics.clj_kondo, __fnl_global__null_2dls.builtins.formatting.lua_format, __fnl_global__null_2dls.builtins.formatting.fnlfmt}})
__fnl_global__mason_2dnull_2dls.setup({ensure_installed = {"rubocop", "eslint_d", "luacheck"}})
local servers = {"hls", "clojure_lsp", "solargraph", "lua_ls", "tsserver", "sqls"}
for _, server in ipairs(servers) do
  local conf_builder = lu["safe-require-server-config"](server)
  local lsp = lspconfig[server]
  lsp.setup(conf_builder.build(lu["on-attach"], lu.capabilities))
end
return nil
