imap <C-v> <Esc>pa
imap <C-z> <Esc>ua

inoremap <M-h> <Left>
inoremap <M-l> <Right>
inoremap <M-k> <C-Up>
inoremap <M-j> <C-Down>

inoremap <silent><expr> <c-space> coc#refresh()
imap <C-l> <Plug>(coc-snippets-expand)
