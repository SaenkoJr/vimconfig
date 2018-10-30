nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-p><C-p> :FZF<CR>
nnoremap <C-p> :FZF ~<CR>
nnoremap <C-p>s :Snippets<CR>

map <C-n> :NERDTreeToggle<CR>
map <F2> :EasyBufferToggle<CR>
"nnoremap <silent> <F8> :TagbarToggle<CR>
nnoremap <silent> <F8> :TagbarOpenAutoClose<CR>

nmap <C-F>n <Plug>CtrlSFCwordPath<CR>

map <A-/> <Plug>NERDCommenterToggle

nnoremap <silent> <leader>FN :NERDTreeFind<CR>
"----- LSP -----
nnoremap <silent> <leader>K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <leader>lrn :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> <leader>lm :call LanguageClient_contextMenu()<CR>

