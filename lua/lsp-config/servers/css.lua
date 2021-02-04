return function(config, on_attach)
  config.cssls.setup {
    cmd = {'css-languageserver', '--stdio'},
    filetypes = {'css', 'scss', 'less'},
    root_dir = config.util.root_pattern('package.json'),
    settings = {
      css = {
        validate = true
      },
      less = {
        validate = true
      },
      scss = {
        validate = true
      }
    },
    on_attach = on_attach
  }
end
