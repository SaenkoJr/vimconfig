" Open last buffer
nnoremap <Leader><Leader> <C-^>
nmap <silent> <Leader>ll :bnext<CR>
nmap <silent> <Leader>hh :bprevious<CR>
nnoremap <leader>ob :EasyBuffer<CR>

nnoremap <Leader>oo :only<CR>

nmap <silent> <Leader>Q :bd<CR>
nnoremap <silent> <Leader>q :quit<CR>
nnoremap <silent> <Leader>w :write<CR>
nnoremap <silent> <Leader>W :wa<CR>

nnoremap <Leader>/ :noh<CR>

" Edit file, starting in same directory as current file
"nnoremap <LocalLeader><LocalLeader>e :edit <C-R>=expand('%:p:h') . '/'<CR>
nnoremap <localleader>cd :cd %:p:h<CR>:pwd<CR>
nmap <leader>fn <Plug>CtrlSFCwordPath<CR>
nmap <leader>ff :Rg <CR>

nnoremap <silent> <leader>v :Vista<CR>

nmap <silent> <leader>ml :Maps<CR>            
nmap <silent> <leader>mx :MaximizerToggle<CR> 

" ----- Easymotion -----
nmap <Leader>e <Plug>(easymotion-prefix)
nmap <Leader>s <Plug>(easymotion-s)
nmap <Leader>. <Plug>(easymotion-repeat)

" ----- Tabularize -----
xmap <leader>tb :Tabularize /

" ----- Vimspector -----
nmap <leader>ir <Plug>VimspectorContinue

" ----- Git -----
nmap <silent> <leader>gb :Gblame<CR>
nmap <silent> <leader>gs :G<CR>

" ----- COC -----
nmap <leader>cr :CocRestart<CR>
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>ca <Plug>(coc-codeaction)
xmap <leader>ca <Plug>(coc-codeaction-selected)
nmap <leader>cl :CocList<cr>
nmap <leader>cd :CocList diagnostics<cr>
nmap <leader>cc :CocList commands<cr>
nmap <leader>co :CocList outline<cr>
nmap <leader>cb :CocCommand fzf-preview.Buffers<cr>

nmap <leader>k <Plug>(coc-diagnostic-prev)
nmap <leader>j <Plug>(coc-diagnostic-next)

" ---- Testrunner ----
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>
