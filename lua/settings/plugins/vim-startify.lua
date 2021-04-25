-- function! s:gitModified()
--   let files = systemlist('git ls-files -m 2>/dev/null')
--   return map(files, "{'line': v:val, 'path': v:val}")
-- endfunction

-- same as above, but show untracked files, honouring .gitignore
-- function! s:gitUntracked()
-- let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
-- return map(files, "{'line': v:val, 'path': v:val}")
-- endfunction

vim.g.ascii = {
  '⠄⢀⣀⣤⣴⣶⣶⣤⣄⡀⠄⠄⣀⣤⣤⣤⣤⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄',
  '⣴⣏⣹⣿⠿⠿⠿⠿⢿⣿⣄⢿⣿⣿⣿⣿⣿⣋⣷⡄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄',
  '⣿⢟⣩⣶⣾⣿⣿⣿⣶⣮⣭⡂⢛⣭⣭⣭⣭⣭⣍⣛⣂⡀⠄⠄⠄⠄⠄⠄⠄⠄',
  '⣿⣿⣿⣿⡿⢟⣫⣭⣷⣶⣾⣭⣼⡻⢛⣛⣭⣭⣶⣶⣬⣭⣅⡀⠄⠄⠄⠄⠄⠄',
  '⣿⡿⢏⣵⣾⣿⣿⣿⡿⢉⡉⠙⢿⣇⢻⣿⣿⣿⣿⡟⠉⠉⢻⡷⠄⠄⠄⠄⠄⠄',
  '⣿⣷⣾⣍⣛⢿⣿⣿⣿⣤⣁⣤⣿⢏⠸⣿⣿⣿⣿⣷⣬⣥⣾⠁⣿⣿⣷⠄⠄⠄',
  '⣿⣿⣿⣿⣭⣕⣒⠿⠭⠭⠭⡷⢖⣫⣶⣶⣬⣭⣭⣭⣭⣥⡶⢣⣿⣿⣿⠄⠄⠄',
  '⣿⣿⣿⣿⣿⣿⣿⡿⣟⣛⣭⣾⣿⣿⣿⣝⡛⣿⢟⣛⣛⣁⣀⣸⣿⣿⣿⣀⣀⣀',
  '⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿',
  '⣿⡿⢛⣛⣛⣛⣙⣛⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣭⣭⠽⣛⢻⣿⣿⣿⠛⠛⠛',
  '⣿⢰⣿⣿⣿⣿⣟⣛⣛⣶⠶⠶⠶⣦⣭⣭⣭⣭⣶⡶⠶⣾⠟⢸⣿⣿⣿⠄⠄⠄',
  '⡻⢮⣭⣭⣭⣭⣉⣛⣛⡻⠿⠿⠷⠶⠶⠶⠶⣶⣶⣾⣿⠟⢣⣬⣛⡻⢱⣇⠄⠄',
  '⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⠶⠒⠄⠄⠄⢸⣿⢟⣫⡥⡆⠄⠄',
  '⢭⣭⣝⣛⣛⣛⣛⣛⣛⣛⣿⣿⡿⢛⣋⡉⠁⠄⠄⠄⠄⠄⢸⣿⢸⣿⣧⡅⠄⠄',
  '⣶⣶⣶⣭⣭⣭⣭⣭⣭⣵⣶⣶⣶⣿⣿⣿⣦⡀⠄⠄⠄⠄⠈⠡⣿⣿⡯⠁⠄⠄',
}
vim.g.startify_custom_header = 'startify#pad(g:ascii)'

vim.g.startify_session_sort = 1
vim.g.startify_session_persistence = 1
vim.g.startify_session_dir = '$HOME/.vim/sessions'

vim.g.startify_fortune_use_unicode = 1
vim.g.startify_change_to_dir = 0
vim.g.startify_lists = {
  { type = 'dir',       header = { '   ---------------------  MRU Current Dir ---------------------' } },
  { type = 'files',     header = { '   ---------------------  MRU ---------------------' } },
  { type = 'sessions',  header = { '   ---------------------  Sessions ---------------------' } },
  { type = 'bookmarks', header = { '   ---------------------  Bookmarks ---------------------' } },
  { type = 'commands',  header = { '   --------------------- גּ Commands ---------------------' } },
-- { 'type': function('s:gitModified'),  'header': ['   ---------------------  GIT Modified ---------------------']},
-- { 'type': function('s:gitUntracked'), 'header': ['   ---------------------  GIT Untracked --------------------']},
}

vim.g.startify_commands = {
  { h = { "Check Vim health", ":checkhealth"  } },
  { g = { "Git status",       ":G" } },
  { u = { "Update Plugin",    ":PackerUpdate" } },
  { c = { "Clean Plugin",     ":PackerClean" } },
  { s = { "Sync Plugin",      ":PackerSync" } },
  { S = { "Start Time",       ":StartupTime" } },
}

vim.g.startify_bookmarks = {
  { n = "~/.config/nvim/init.lua" },
  { t = "~/.tmux.conf" },
  { z = "~/.zshrc" },
  { d = "~/dotfiles" },
}

