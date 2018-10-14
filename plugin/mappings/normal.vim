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

"----- LSP -----
nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
