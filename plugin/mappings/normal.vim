nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-p><C-p> :Files<CR>
nnoremap <C-p><C-g> :Files ~<CR>
nnoremap <C-p>s :Snippets<CR>

" formating file
nnoremap =G :normal! gg=G``<CR>

map <silent> <C-n> :NERDTreeToggle<CR>

map <A-/> <Plug>NERDCommenterToggle
nnoremap <F5> :UndotreeToggle<CR>

"----- LSP -----
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <C-space> <Plug>(coc-float-hide)

function! Expand(exp) abort
    let l:result = expand(a:exp)
    return l:result ==# '' ? '' : "file://" . l:result
endfunction

nnoremap <silent> crcc :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'cycle-coll', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crth :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-first', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crtt :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-last', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crtf :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-first-all', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crtl :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'thread-last-all', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> cruw :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'unwind-thread', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crua :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'unwind-all', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crml :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'move-to-let', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Binding name: ')]})<CR>
nnoremap <silent> cril :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'introduce-let', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Binding name: ')]})<CR>
nnoremap <silent> crel :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'expand-let', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> cram :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'add-missing-libspec', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> crcn :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'clean-ns', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1]})<CR>
nnoremap <silent> cref :call CocRequest('clojure-lsp', 'workspace/executeCommand', {'command': 'extract-function', 'arguments': [Expand('%:p'), line('.') - 1, col('.') - 1, input('Function name: ')]})<CR>

autocmd FileType typescript,javascript nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

"----- sexp -----
let g:sexp_mappings = {
      \ 'sexp_outer_list':                'af',
      \ 'sexp_inner_list':                'if',
      \ 'sexp_outer_top_list':            'aF',
      \ 'sexp_inner_top_list':            'iF',
      \ 'sexp_outer_string':              'as',
      \ 'sexp_inner_string':              'is',
      \ 'sexp_outer_element':             'ae',
      \ 'sexp_inner_element':             'ie',
      \ 'sexp_move_to_prev_bracket':      '(',
      \ 'sexp_move_to_next_bracket':      ')',
      \ 'sexp_move_to_prev_element_head': '<M-b>',
      \ 'sexp_move_to_next_element_head': '<M-w>',
      \ 'sexp_move_to_prev_element_tail': 'g<M-e>',
      \ 'sexp_move_to_next_element_tail': '<M-e>',
      \ 'sexp_flow_to_prev_open':         '<M-[>',
      \ 'sexp_flow_to_next_open':         '<M-]>',
      \ 'sexp_flow_to_prev_close':        '<M-{>',
      \ 'sexp_flow_to_next_close':        '<M-}>',
      \ 'sexp_flow_to_prev_leaf_head':    '<M-S-b>',
      \ 'sexp_flow_to_next_leaf_head':    '<M-S-w>',
      \ 'sexp_flow_to_prev_leaf_tail':    '<M-S-g>',
      \ 'sexp_flow_to_next_leaf_tail':    '<M-S-e>',
      \ 'sexp_move_to_prev_top_element':  '[[',
      \ 'sexp_move_to_next_top_element':  ']]',
      \ 'sexp_select_prev_element':       '[e',
      \ 'sexp_select_next_element':       ']e',
      \ 'sexp_round_head_wrap_list':      '<LocalLeader>i',
      \ 'sexp_round_tail_wrap_list':      '<LocalLeader>I',
      \ 'sexp_square_head_wrap_list':     '<LocalLeader>[',
      \ 'sexp_square_tail_wrap_list':     '<LocalLeader>]',
      \ 'sexp_curly_head_wrap_list':      '<LocalLeader>{',
      \ 'sexp_curly_tail_wrap_list':      '<LocalLeader>}',
      \ 'sexp_round_head_wrap_element':   '<LocalLeader>w',
      \ 'sexp_round_tail_wrap_element':   '<LocalLeader>W',
      \ 'sexp_square_head_wrap_element':  '<LocalLeader>e[',
      \ 'sexp_square_tail_wrap_element':  '<LocalLeader>e]',
      \ 'sexp_curly_head_wrap_element':   '<LocalLeader>e{',
      \ 'sexp_curly_tail_wrap_element':   '<LocalLeader>e}',
      \ 'sexp_insert_at_list_head':       '<LocalLeader>h',
      \ 'sexp_insert_at_list_tail':       '<LocalLeader>l',
      \ 'sexp_splice_list':               '<LocalLeader>@',
      \ 'sexp_convolute':                 '<LocalLeader>?',
      \ 'sexp_raise_list':                '<LocalLeader>o',
      \ 'sexp_raise_element':             '<LocalLeader>O',
      \ 'sexp_swap_list_backward':        '<M-k>',
      \ 'sexp_swap_list_forward':         '<M-j>',
      \ 'sexp_swap_element_backward':     '<M-h>',
      \ 'sexp_swap_element_forward':      '<M-l>',
      \ 'sexp_emit_head_element':         '<M-S-j>',
      \ 'sexp_emit_tail_element':         '<M-S-k>',
      \ 'sexp_capture_prev_element':      '<M-S-h>',
      \ 'sexp_capture_next_element':      '<M-S-l>',
      \ }
