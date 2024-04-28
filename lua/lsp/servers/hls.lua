-- [nfnl] Compiled from fnl/lsp/servers/hls.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("lspconfig.util")
local function build(on_attach, capabilities)
  return {cmd = {"haskell-language-server-wrapper", "--lsp"}, root_dir = util.root_pattern(".git", "*.cabal", "stack.yaml", "cabal.project", "package.yaml", "hie.yaml"), capabilities = capabilities, on_attach = on_attach}
end
return {build = build}
