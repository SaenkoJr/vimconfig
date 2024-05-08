(local uu (require :dotfiles.utils))

[(uu.tx :junegunn/fzf {:init (uu.lc :fzf)})
 (uu.tx :dyng/ctrlsf.vim {:init (uu.lc :ctrlsf)})
 (uu.tx :windwp/nvim-spectre {:init (uu.lc :nvim-spectre)})
 (uu.tx :kyazdani42/nvim-tree.lua {:init (uu.lc :nvim-tree)})
 (uu.tx :kevinhwang91/rnvimr
        {:init (uu.lc :ranger)
         :lazy false})
 :junegunn/fzf.vim
 :nvim-tree/nvim-web-devicons]
