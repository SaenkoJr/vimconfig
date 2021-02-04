local lspconfig = require 'lspconfig'

lspconfig.solargraph.setup {
  -- cmd = { 'solargraph' },
  filetypes = { 'eruby', 'ruby', 'haml', 'slim' },
  settings = {
    solargraph = {
      diagnostics = true
    },
  },
  root_dir = lspconfig.util.root_pattern('Gemfile', '.git', 'package.json'),
  on_attach = on_attach_lsp
}
