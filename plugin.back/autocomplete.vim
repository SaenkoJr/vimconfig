" Autocomplete settings
inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-j>"
inoremap <expr><Up> pumvisible() ? "\<C-p>" : "\<Up>"

" imap <expr> <buffer> <silent> <C-l> pumvisible() ? "\<C-y>" : "\<C-l>"
" smap <expr> <buffer> <silent> <C-l> pumvisible() ? "\<C-y>" : "\<C-l>"

inoremap <silent><expr> <C-l>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<C-l>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
