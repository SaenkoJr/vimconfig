return function(config, on_attach)
  config.html.setup {
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
    on_attach = on_attach
  }
end
