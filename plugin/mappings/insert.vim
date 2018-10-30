imap <C-v> <Esc>pi
imap <C-z> <Esc>ui

inoremap <M-h> <C-Left>
inoremap <M-l> <C-Right>
inoremap <M-k> <C-Up>
inoremap <M-j> <C-Down>

inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"
