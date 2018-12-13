" Autocomplete settings
inoremap <expr><C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr><Down> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr><C-k> pumvisible() ? "\<C-p>" : "\<C-j>"
inoremap <expr><Up> pumvisible() ? "\<C-p>" : "\<Up>"

imap <expr><TAB>
      \ pumvisible() ? "\<Plug>(neosnippet_expand_or_jump)" :
      \ neosnippet#expandable_or_jumpable() ?
      \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" let g:UltiSnipsExpandTrigger = '<Tab>'
" let g:UltiSnipsJumpForwardTrigger = '<Tab>'
" let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

" " Prevent UltiSnips from removing our carefully-crafted mappings.
" let g:UltiSnipsMappingsToIgnore = ['autocomplete']

" if has('autocmd')
"   augroup WincentAutocomplete
"     autocmd!
"     autocmd! User UltiSnipsEnterFirstSnippet
"     autocmd User UltiSnipsEnterFirstSnippet call autocomplete#setup_mappings()
"     autocmd! User UltiSnipsExitLastSnippet
"     autocmd User UltiSnipsExitLastSnippet call autocomplete#teardown_mappings()
"   augroup END
" endif

" " Additional UltiSnips config.
" let g:UltiSnipsSnippetsDir = '~/.config/nvim/private-snips'
" let g:UltiSnipsSnippetDirectories = ['private-snips']
