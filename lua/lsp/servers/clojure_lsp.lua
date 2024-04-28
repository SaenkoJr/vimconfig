-- [nfnl] Compiled from fnl/lsp/servers/clojure_lsp.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("lspconfig.util")
local function build(on_attach, capabilities)
  return {capabilities = capabilities, cmd = {"clojure-lsp"}, filetypes = {"clojure", "clj", "edn"}, init_options = {hover = {clojuredocs = true, ["hide-file-location?"] = true}}, root_dir = util.root_pattern("project.clj", ".git", "*.clj", "deps.edn"), on_attach = on_attach}
end
return {build = build}
