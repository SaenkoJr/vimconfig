-- [nfnl] Compiled from fnl/saenkomm/lsp/servers/clojure_lsp.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.lsp.servers.clojure_lsp, {[require] = {[util] = lspconfig.util}})
return defn(build, {__fnl_global__on_2dattach, capabilities}, {capabilities = capabilities, cmd = {"clojure-lsp"}, filetypes = {"clojure", "clj", "edn"}, init_options = {hover = {clojuredocs = true, ["hide-file-location?"] = true}}, root_dir = util.root_pattern("project.clj", ".git", "*.clj", "deps.edn"), on_attach = __fnl_global__on_2dattach})
