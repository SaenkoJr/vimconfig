vim.g.user_emmet_mode = 'i'
vim.g.user_emmet_leader_key = '<C-e>'
vim.g.user_emmet_install_global = 0
vim.api.nvim_exec([[
  autocmd FileType html,css,scss,erb,eruby,html.erb,javascript.jsx,jsx EmmetInstall
]], false)

