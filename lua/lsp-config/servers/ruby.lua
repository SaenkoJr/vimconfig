return function(config, on_attach)
  config.solargraph.setup {
    -- cmd = { 'solargraph' },
    filetypes = { 'eruby', 'ruby', 'haml', 'slim' },
    settings = {
      solargraph = {
        diagnostics = true
      },
    },
    -- root_dir = config.util.root_pattern('Gemfile', '.git', 'package.json'),
    on_attach = on_attach
  }
end
