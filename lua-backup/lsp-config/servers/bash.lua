return function(config, on_attach)
  config.bashls.setup {
    cmd = { 'bash-language-server', 'start' },
    filetypes = { 'sh', 'bash', 'zsh', 'conf' },
    settings = {},
    on_attach = on_attach,
  }
end
