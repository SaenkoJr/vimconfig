-- [nfnl] Compiled from fnl/saenkomm/lsp/servers/sqlls.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.lsp.servers.sqlls, {[require] = {[util] = lspconfig.util}})
return defn(build, {__fnl_global__on_2dattach, capabilities}, {cmd = {"sql-language-server", "up", "--method", "stdio"}, filetypes = {"sql"}, root_dir = util.root_pattern("*-query-*", "*.sql", ".git"), capabilities = capabilities, on_attach = __fnl_global__on_2dattach})
