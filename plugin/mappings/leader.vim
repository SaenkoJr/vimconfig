" Open last buffer
nnoremap <Leader><Leader> <C-^>
nmap <silent> <Leader>ll :bnext<CR>
nmap <silent> <Leader>hh :bprevious<CR>
nnoremap <leader>ob :EasyBufferToggle<CR>

nnoremap <Leader>oo :only<CR>

nnoremap <silent> <Leader>r :call mappings#cycle_numbering()<CR>

nmap <silent> <Leader>Q :bd<CR>
nnoremap <silent> <Leader>q :quit<CR>
nnoremap <silent> <Leader>w :write<CR>
nnoremap <silent> <Leader>W :wa<CR>

nnoremap <Leader>/ :noh<CR>

nmap <Leader>k <Plug>(ale_previous_wrap)
nmap <Leader>j <Plug>(ale_next_wrap)
nmap <Leader>af :ALEFix<CR>

" nmap <Leader>k <Plug>(coc-diagnostic-prev)
" nmap <Leader>j <Plug>(coc-diagnostic-next)

nmap <Leader>e <Plug>(easymotion-prefix)
nmap <Leader>s <Plug>(easymotion-s)

" Edit file, starting in same directory as current file
"nnoremap <LocalLeader><LocalLeader>e :edit <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>FN :NERDTreeFind<CR>
nmap <leader>fn <Plug>CtrlSFCwordPath<CR>

nnoremap <silent> <leader>v :Vista<CR>

nmap <silent> <leader>ml :Maps<CR>

" ----- Git -----
nmap <silent> <leader>gb :Gblame<CR>

" ----- LSP -----
" nnoremap <leader>yrm :YcmCompleter RefactorRename
" nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>

nmap <leader>yrm <Plug>(coc-rename)

" nnoremap <silent> <leader>K :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> <leader>gd :call LanguageClient_textDocument_definition()<CR>
" nnoremap <silent> <leader>lrm :call LanguageClient_textDocument_rename()<CR>
" nnoremap <silent> <leader>lm :call LanguageClient_contextMenu()<CR>

" ---- Testrunner ----
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
" nmap <silent> t<C-g> :TestVisit<CR>
