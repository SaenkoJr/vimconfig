" Open last buffer
nnoremap <Leader><Leader> <C-^>

nnoremap <Leader>o :only<CR>

nnoremap <silent> <Leader>r :call Cycle_numbering()<CR>

" Show the full path of the current file
nnoremap <Leader>p :echo expand('%')<CR>

nnoremap <Leader>q :quit<CR>

" Edit file, starting in same directory as current file
"nnoremap <LocalLeader><LocalLeader>e :edit <C-R>=expand('%:p:h') . '/'<CR>
