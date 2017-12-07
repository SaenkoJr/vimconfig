let g:WincentColorColumnBlacklist = ['diff', 'nerdtree', 'qf']
let g:WincentMkviewFiletypeBlacklist = ['diff', 'hgcommit', 'gitcommit']
let g:WincentCursorlineBlacklist = ['ctlr-p']

function! autocmds#should_colorcolumn() abort
  return index(g:WincentColorColumnBlacklist, &filetype) == -1
endfunction

function! autocmds#should_cursorline() abort
  return index(g:WincentCursorlineBlacklist, &filetype) == -1
endfunction

" Loosely based on: http://vim.wikia.com/wiki/Make_views_automatic
function! autocmds#should_mkview() abort
  return
        \ &buftype == '' &&
        \ index(g:WincentMkviewFiletypeBlacklist, &filetype) == -1 &&
        \ !exists('$SUDO_USER') " Don't create root-owned files.
endfunction

function! autocmds#mkview() abort
  if exists('*haslocaldir') && haslocaldir()
    " We never want to save an :lcd command, so hack around it...
    cd -
    mkview
    lcd -
  else
    mkview
  endif
endfunction
