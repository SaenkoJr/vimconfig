vim.g.airline_theme = 'sol'
vim.g.airline_powerline_fonts = 1
vim.g['airline#extensions#tabline#enabled']         = 1
vim.g['airline#extensions#tabline#disable_refresh'] = 1
vim.g['airline#extensions#tabline#formatter'] = 'short_path'
vim.g['airline#extensions#tmuxline#snapshot_file']    = "~/.tmux-status.conf"

vim.g['airline#extensions#tmuxline#enabled']        = 1
vim.g.tmuxline_preset = {
  a       = '#{?client_prefix,༼ つ ͡° ͜ʖ ͡° ༽つ,(づ｡◕‿‿◕｡)づ}',
  win     = { '#I', '#W' },
  cwin    = { '#I', '#W' },
  y       = { '%b %d', '%R' },
  options = {
    ['status-justify'] = 'left',
    ['window-status-separator'] = ' '
  }
}
vim.g.tmuxline_separators = {
  [ 'left' ]      = '',
  [ 'left_alt' ]  = '',
  [ 'right' ]     = '',
  [ 'right_alt' ] = '',
  [ 'space' ]     = ' '
}
