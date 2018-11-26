" Open last buffer
nnoremap <Leader><Leader> <C-^>
nmap <Leader>ll :bnext<CR>
nmap <Leader>hh :bprevious<CR>
nmap <Leader>bd :bd<CR>
nnoremap <leader>ob :EasyBufferToggle<CR>

nnoremap <Leader>oo :only<CR>

nnoremap <silent> <Leader>r :call mappings#cycle_numbering()<CR>

nnoremap <Leader>q :quit<CR>
nnoremap <Leader>w :write<CR>

nnoremap <Leader>n :noh<CR>

nmap <Leader>k <Plug>(ale_previous_wrap)
nmap <Leader>j <Plug>(ale_next_wrap)

nmap <Leader>e <Plug>(easymotion-prefix)
nmap <Leader>s <Plug>(easymotion-s)

" Edit file, starting in same directory as current file
"nnoremap <LocalLeader><LocalLeader>e :edit <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>

nnoremap <silent> <leader>FN :NERDTreeFind<CR>

" "----- LSP -----
nnoremap <silent> <leader>K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> <leader>gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <leader>lrm :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <leader>lm :call LanguageClient_contextMenu()<CR>

