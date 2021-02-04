local lspconfig = require 'lspconfig'

lspconfig.bashls.setup {
  cmd = { 'bash-language-server', 'start' },
  filetypes = { 'sh', 'bash', 'zsh', 'conf' },
  settings = {},
  on_attach = on_attach_lsp,
}
