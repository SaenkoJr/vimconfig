if has('autocmd')
  au BufReadPost *.rkt,*.rktl set filetype=racket
  au filetype racket set lisp
  au filetype racket set autoindent

  augroup Autocmds
    autocmd!

    " autocmd VimResized * execute "normal! \<c-w>="

    " http://vim.wikia.com/wiki/Detect_window_creation_with_WinEnter
    autocmd VimEnter * autocmd WinEnter * let w:created=1
    autocmd VimEnter * let w:created=1

    " Disable paste mode on leaving insert mode.
    autocmd InsertLeave * set nopaste

    autocmd InsertLeave * silent! pclose!

    autocmd bufnewfile,bufread *.jsx set filetype=javascript.jsx
    autocmd bufnewfile,bufread *.tsx set filetype=typescript.tsx

    if has('mksession')
      " Save/restore folds and cursor position.
      autocmd BufWritePost,BufLeave,WinLeave ?* if autocmds#should_mkview() | call autocmds#mkview() | endif
      if has('folding')
        autocmd BufWinEnter ?* if autocmds#should_mkview() | silent! loadview | execute 'silent! ' . line('.') . 'foldopen!' | endif
      else
        autocmd BufWinEnter ?* if autocmds#should_mkview() | silent! loadview | endif
      endif
    elseif has('folding')
      " Like the autocmd described in `:h last-position-jump` but we add `:foldopen!`.
      autocmd BufWinEnter * if line("'\"") > 1 && line("'\"") <= line('$') | execute "normal! g`\"" | execute 'silent! ' . line("'\"") . 'foldopen!' | endif
    else
      autocmd BufWinEnter * if line("'\"") > 1 && line("'\"") <= line('$') | execute "normal! g`\"" | endif
    endif

    autocmd BufWritePost */spell/*.add silent! :mkspell! %
  augroup END
endif
