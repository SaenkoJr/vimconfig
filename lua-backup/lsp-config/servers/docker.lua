return function(config, on_attach)
  config.docker.setup {
    cmd = {'docker-langserver', '--stdio'},
    filetypes = { 'dockerfile' },
    init_options = {
    },
    settings = {},
    on_attach = on_attach
  }
end
