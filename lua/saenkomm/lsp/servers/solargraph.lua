-- [nfnl] Compiled from fnl/saenkomm/lsp/servers/solargraph.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.lsp.servers.solargraph, {[require] = {[util] = lspconfig.util}})
return defn(build, {__fnl_global__on_2dattach, capabilities}, {cmd = {"solargraph", "stdio"}, root_dir = util.root_pattern("Gemfile", ".git", "*.rb"), init_options = {formatting = true}, settings = {solargraph = {diagnostics = true, autoformat = false}}, flags = {debounce_text_change = 150}, capabilities = capabilities, on_attach = __fnl_global__on_2dattach})
