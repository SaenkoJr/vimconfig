" Open last buffer
nnoremap <Leader><Leader> <C-^>
nmap <Leader>ll :bnext<CR>
nmap <Leader>hh :bprevious<CR>
nmap <Leader>bd :bd<CR>

nnoremap <Leader>o :only<CR>

nnoremap <silent> <Leader>r :call mappings#cycle_numbering()<CR>

" Show the full path of the current file
nnoremap <Leader>p :echo expand('%')<CR>

nnoremap <Leader>q :quit<CR>

nnoremap <Leader>w :write<CR>

nnoremap <Leader>n :noh<CR>

nmap <Leader>k <Plug>(ale_previous_wrap)
nmap <Leader>j <Plug>(ale_next_wrap)

nmap <Leader>e <Plug>(easymotion-prefix)
" Edit file, starting in same directory as current file
"nnoremap <LocalLeader><LocalLeader>e :edit <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

"----- LSP -----
nnoremap <Leader> rnm :call LanguageClient_textDocument_rename()<CR>
