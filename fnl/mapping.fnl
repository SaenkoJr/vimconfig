(module mapping
  {require {nvim aniseed.nvim
            : utils}})

(set nvim.g.mapleader " ")
(set nvim.g.maplocalleader ",")

(utils.noremap :i :jj :<esc>)
(utils.noremap :t :<c-o> :<c-\><c-n>)

(utils.noremap :n :<c-n> ":Ranger<cr>")

(utils.noremap :n :<localleader>q ":q<cr>")
(utils.noremap :n :<localleader>Q ":Bdelete<cr>")
(utils.noremap :n :<localleader>w ":w!<cr>")
(utils.noremap :n :<localleader>W ":w!<cr>:e<cr>")

(utils.noremap :n :<leader><leader> :<c-^>)
(utils.noremap :n :<leader>ll ":bnext<cr>")
(utils.noremap :n :<leader>hh ":bprev<cr>")
(utils.noremap :n :<leader>ob ":EasyBuffer<cr>")
(utils.noremap :n :<leader>oo ":Bonly<cr>")

(utils.noremap :n :<c-h> :<c-w>h)
(utils.noremap :n :<c-j> :<c-w>j)
(utils.noremap :n :<c-k> :<c-w>k)
(utils.noremap :n :<c-l> :<c-w>l)

(utils.nnoremap :/ :noh)

(nvim.set_keymap :n :<A-/> "<plug>NERDCommenterToggle" {:noremap false :silent true})
(nvim.set_keymap :v :<A-/> "<plug>NERDCommenterToggle" {:noremap false :silent true})
