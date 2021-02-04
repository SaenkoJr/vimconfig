local lspconfig = require 'lspconfig'

lspconfig.html.setup {
  cmd = {'html-languageserver', '--stdio'},
  filetypes = {'html', 'javascriptreact', 'eruby'},
  -- filetypes = {"html"},
  init_options = {
    configurationSection = {'html', 'css', 'javascript'},
    embeddedLanguages = {
      css = true,
      javascript = true
    }
  },
  settings = {},
  on_attach = on_attach_lsp
}
