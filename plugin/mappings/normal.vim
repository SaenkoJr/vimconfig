nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-p><C-p> :Files<CR>
nnoremap <C-p><C-g> :Files ~<CR>
nnoremap <C-p>s :Snippets<CR>

" formating file
nnoremap =G :normal! gg=G``<CR>

map <silent> <C-n> :NERDTreeToggle<CR>
" nnoremap <silent> <F8> :TagbarOpenAutoClose<CR>

map <A-/> <Plug>NERDCommenterToggle
nnoremap <F5> :UndotreeToggle<CR>

"----- LSP -----
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
