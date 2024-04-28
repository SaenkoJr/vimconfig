-- [nfnl] Compiled from fnl/lsp/servers/solargraph.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("lspconfig.util")
local function build(on_attach, capabilities)
  return {cmd = {"solargraph", "stdio"}, root_dir = util.root_pattern("Gemfile", ".git", "*.rb"), init_options = {formatting = true}, settings = {solargraph = {diagnostics = true, autoformat = false}}, flags = {debounce_text_change = 150}, capabilities = capabilities, on_attach = on_attach}
end
return {build = build}
