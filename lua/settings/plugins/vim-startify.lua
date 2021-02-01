-- function! s:gitModified()
--   let files = systemlist('git ls-files -m 2>/dev/null')
--   return map(files, "{'line': v:val, 'path': v:val}")
-- endfunction

-- same as above, but show untracked files, honouring .gitignore
-- function! s:gitUntracked()
-- let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
-- return map(files, "{'line': v:val, 'path': v:val}")
-- endfunction

vim.g.startify_session_persistence = 1
vim.g.startify_session_dir = '$HOME/.vim/sessions'
vim.g.startify_fortune_use_unicode = 1
vim.g.startify_change_to_dir = 0
vim.g.startify_lists = {
  { type = 'dir', header = { '   ---------------------  MRU Current Dir ---------------------' } },
  { type = 'files', header = { '   ---------------------  MRU ---------------------' } },
  { type = 'sessions', header = { '   ---------------------  Sessions ---------------------' } },
  { type = 'bookmarks', header = { '   Bookmarks' } },
  { type = 'commands', header = { '   Commands' } },
}
-- let g:startify_lists = [
-- \ { 'type': 'dir',                      'header': ['   ---------------------  MRU Current Dir ---------------------'] },
-- \ { 'type': function('s:gitModified'),  'header': ['   ---------------------  GIT Modified ---------------------']},
-- \ { 'type': function('s:gitUntracked'), 'header': ['   ---------------------  GIT Untracked --------------------']},
-- \ { 'type': 'files',                    'header': ['   ---------------------  MRU ---------------------']            },
-- \ { 'type': 'sessions',                 'header': ['   ---------------------  Sessions ---------------------']       },
-- \ { 'type': 'bookmarks',                'header': ['   Bookmarks']      },
-- \ { 'type': 'commands',                 'header': ['   Commands']       },
-- \ ]
