-- [nfnl] Compiled from fnl/saenkomm/lsp/servers/sqls.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.lsp.servers.sqls, {[require] = {[util] = lspconfig.util}})
return defn(build, {__fnl_global__on_2dattach, capabilities}, {filetypes = {"sql"}, root_dir = util.root_pattern("*-query-*", "*.sql", ".git"), capabilities = capabilities, on_attach = __fnl_global__on_2dattach})
