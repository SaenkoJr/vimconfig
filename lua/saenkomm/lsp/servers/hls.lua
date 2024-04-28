-- [nfnl] Compiled from fnl/saenkomm/lsp/servers/hls.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.lsp.servers.hls, {[require] = {[util] = lspconfig.util}})
return defn(build, {__fnl_global__on_2dattach, capabilities}, {cmd = {"haskell-language-server-wrapper", "--lsp"}, root_dir = util.root_pattern(".git", "*.cabal", "stack.yaml", "cabal.project", "package.yaml", "hie.yaml"), capabilities = capabilities, on_attach = __fnl_global__on_2dattach})
