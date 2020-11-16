imap <C-v> <Esc>pa
imap <C-z> <Esc>ua

inoremap jj <C-[>

inoremap <M-h> <Left>
inoremap <M-l> <Right>
inoremap <M-k> <C-Up>
inoremap <M-j> <C-Down>

inoremap <silent><expr> <c-space> coc#refresh()
" imap <C-l> <Plug>(coc-snippets-expand)

inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
