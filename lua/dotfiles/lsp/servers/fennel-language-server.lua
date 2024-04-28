-- [nfnl] Compiled from fnl/dotfiles/lsp/servers/fennel-language-server.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("lspconfig.util")
local function build(on_attach, capabilities)
  return {filetypes = {"fennel"}, init_options = {hover = {clojuredocs = true, ["hide-file-location?"] = true}}, root_dir = util.root_pattern("*.fnl", ".git"), capabilities = capabilities, on_attach = on_attach}
end
return {build = build}
