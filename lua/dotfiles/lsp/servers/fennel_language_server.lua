-- [nfnl] Compiled from fnl/dotfiles/lsp/servers/fennel_language_server.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("lspconfig.util")
local function build(on_attach, capabilities)
  return {filetypes = {"fennel"}, root_dir = util.root_pattern("*.fnl", ".git"), capabilities = capabilities, on_attach = on_attach, settings = {fennel = {workspace = {library = vim.api.nvim_list_runtime_paths()}, diagnostics = {globals = {"vim"}}}}}
end
return {build = build}
