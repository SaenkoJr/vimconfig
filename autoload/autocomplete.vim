let s:expansion_active = 0

function! autocomplete#setup_mappings() abort
"   " Overwrite the mappings that UltiSnips sets up during expansion.
"   execute 'inoremap <buffer> <silent> ' . g:UltiSnipsJumpForwardTrigger .
"         \ ' <C-R>=autocomplete#expand_or_jump("N")<CR>'
"   execute 'snoremap <buffer> <silent> ' . g:UltiSnipsJumpForwardTrigger .
"         \ ' <Esc>:call autocomplete#expand_or_jump("N")<CR>'
"   execute 'inoremap <buffer> <silent> ' . g:UltiSnipsJumpBackwardTrigger .
"         \ ' <C-R>=autocomplete#expand_or_jump("P")<CR>'
"   execute 'snoremap <buffer> <silent> ' . g:UltiSnipsJumpBackwardTrigger .
"         \ ' <Esc>:call autocomplete#expand_or_jump("P")<CR>'

  " One additional mapping of our own: accept completion with <CR>.
  imap <expr> <buffer> <silent> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
  smap <expr> <buffer> <silent> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

  let s:expansion_active = 1
endfunction
