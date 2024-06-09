-- [nfnl] Compiled from fnl/dotfiles/lsp/init.fnl by https://github.com/Olical/nfnl, do not edit.
local lu = require("dotfiles.lsp.utils")
local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lint = require("lint")
local lint_parser = require("lint.parser")
local core = require("aniseed.core")
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
local servers = {"clojure_lsp", "ruby_lsp", "lua_ls", "tsserver", "sqls", "fennel_language_server", "tailwindcss"}
vim.diagnostic.config({float = {border = "rounded"}})
mason.setup({PATH = "append", ui = {border = "rounded", height = 0.7}})
mason_lspconfig.setup({ensure_installed = servers})
do
  local servers0 = servers
  for _, server_name in ipairs(servers0) do
    local server = lu["safe-require-server-config"](server_name)
    local lsp = lspconfig[server_name]
    lsp.setup(server.build(lu["on-attach"], lu.capabilities))
  end
end
local function _1_()
  return vim.api.nvim_buf_get_name(0)
end
lint.linters["slim-lint"] = {cmd = "slim-lint", stdin = true, ignore_exitcode = true, stream = "stdout", args = {"-r", "emacs", "--stdin-file-path", _1_}, parser = lint_parser.from_errorformat("%f:%l:%c: %m", {source = "slim-lint", severity = vim.diagnostic.severity.WARN})}
lint["linters_by_ft"] = {javascript = {"eslint_d"}, slim = {"slim-lint"}, ruby = {"rubocop"}}
local function _2_()
  return lint.try_lint()
end
return vim.api.nvim_create_autocmd({"BufWritePost", "BufEnter", "InsertLeave"}, {callback = _2_})
