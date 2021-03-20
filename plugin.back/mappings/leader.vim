" ----- Local leader -----
" Edit file, starting in same directory as current file
"nnoremap <LocalLeader><LocalLeader>e :edit <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <localleader>cd :cd %:p:h<CR>:pwd<CR>

" ----- Registers -----
xmap <leader>p "0p

" ----- Vim source -----
map <leader>vr :source $MYVIMRC<CR>

" Open last buffer
nnoremap <Leader><Leader> <C-^>
nmap <silent> <Leader>ll :bnext<CR>
nmap <silent> <Leader>hh :bprevious<CR>
nnoremap <leader>ob :EasyBuffer<CR>

nnoremap <Leader>oo :Bonly<CR>

nmap <silent> <Leader>Q :bd<CR>
nnoremap <silent> <Leader>q :quit<CR>
nnoremap <silent> <Leader>w :write<CR>
nnoremap <silent> <Leader>W :wa<CR>

nnoremap <Leader>/ :noh<CR>

nmap <leader>fn <Plug>CtrlSFCwordPath<CR>
nmap <leader>ff :Rg <C-R><C-W><CR>

nmap <silent> <leader>ml :Maps<CR>
nmap <silent> <leader>mx :MaximizerToggle<CR>

" ----- Easymotion -----
nmap <Leader>e <Plug>(easymotion-prefix)
nmap <Leader>s <Plug>(easymotion-s)
nmap <Leader>. <Plug>(easymotion-repeat)

" ----- Vimspector -----
nmap <leader>ir <Plug>VimspectorContinue

" ----- Git -----
nmap <silent> <leader>gb :Gblame<CR>
nmap <silent> <leader>gs :G<CR>

" ----- CoC -----
nmap <leader>cr :CocRestart<CR>
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ca <Plug>(coc-codeaction)
xmap <leader>ca <Plug>(coc-codeaction-selected)
nmap <leader>cl :CocList<cr>
nmap <leader>cd :CocList diagnostics<cr>
nmap <leader>cc :CocList commands<cr>
nmap <leader>co :CocList outline<cr>
nmap <leader>cb :CocCommand fzf-preview.Buffers<cr>

nmap <leader>cy :CocList yank<cr>

nmap <leader>k <Plug>(coc-diagnostic-prev)
nmap <leader>j <Plug>(coc-diagnostic-next)

nmap <leader>cf <Plug>(coc-fix-current)
xmap <leader>fs <Plug>(coc-format-selected)

xmap <leader>s <Plug>(coc-convert-snippet)

" ---- Testrunner ----
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>