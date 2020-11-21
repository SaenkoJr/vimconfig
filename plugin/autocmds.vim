if has('autocmd')
  au BufReadPost *.rkt,*.rktl set filetype=racket
  au filetype racket set lisp
  au filetype racket set autoindent

  augroup ColorThemes
    autocmd!

    " hi SignColumn guibg=#e6e6e6

    hi! CocErrorSign guifg=#ec0009
    hi! CocInfoSign guifg=#ffa51e
    hi! CocWarningSign guifg=#ffa51e
  augroup END

  augroup Autocmds
    autocmd!

    autocmd CursorHold * silent call CocActionAsync('highlight')

    " autocmd VimResized * execute "normal! \<c-w>="

    " http://vim.wikia.com/wiki/Detect_window_creation_with_WinEnter
    autocmd VimEnter * autocmd WinEnter * let w:created=1
    autocmd VimEnter * let w:created=1

    " Disable paste mode on leaving insert mode.
    autocmd InsertLeave * set nopaste

    autocmd InsertLeave * silent! pclose!

    autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx
    autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx

    autocmd BufWritePost */spell/*.add silent! :mkspell! %
  augroup END
endif
