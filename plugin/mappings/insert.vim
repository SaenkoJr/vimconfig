imap <C-v> <Esc>pi
imap <C-z> <Esc>ui

inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"
