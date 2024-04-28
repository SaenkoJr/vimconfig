-- [nfnl] Compiled from fnl/dotfiles/lsp/servers/sqls.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("lspconfig.util")
local function build(on_attach, capabilities)
  return {filetypes = {"sql"}, root_dir = util.root_pattern("*-query-*", "*.sql", ".git"), capabilities = capabilities, on_attach = on_attach}
end
return {build = build}
