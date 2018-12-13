nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-p><C-p> :FZF<CR>
nnoremap <C-p><C-g> :FZF ~<CR>
nnoremap <C-p>s :Snippets<CR>

map <C-n> :NERDTreeToggle<CR>
"nnoremap <silent> <F8> :TagbarToggle<CR>
nnoremap <silent> <F8> :TagbarOpenAutoClose<CR>

nmap <C-F>n <Plug>CtrlSFCwordPath<CR>

map <A-/> <Plug>NERDCommenterToggle


"----- LSP -----
nnoremap gd :YcmCompleter GoToDefinition<CR>

" ---- Testrunner ----
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>
