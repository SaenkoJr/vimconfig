map('n', '_R', ':lua reload_config()<cr>')

map('i', 'jj', '<C-[>')

map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', 'c', '"_c')
map('n', 'C', '"_C')

map('i', '<C-v>', '<Esc>pa')
map('i', '<C-z>', '<Esc>ua')
map('x', '<leader>p', '"0p')

map('n', '=G', ':normal! gg=G``<CR>')

map('n', '<Leader>Q', ':bd<CR>')
map('n', '<Leader>q', ':quit<CR>')
map('n', '<Leader>w', ':write<CR>')
map('n', '<Leader>W', ':wa<CR>')

map('n', '<Leader>/', ':noh<CR>')

map('n', '<localleader>cd', ':cd %:p:h<CR>:pwd<CR>')

map('i', '<M-h>', '<Left>')
map('i', '<M-l>', '<Right>')

map('i', '<C-k>', 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', { expr = true })
map('i', '<C-j>', 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', { expr = true })
