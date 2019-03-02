imap <C-v> <Esc>pa
imap <C-z> <Esc>ua

inoremap <M-h> <Left>
inoremap <M-l> <Right>

inoremap <M-k> <C-Up>
inoremap <M-j> <C-Down>

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()
