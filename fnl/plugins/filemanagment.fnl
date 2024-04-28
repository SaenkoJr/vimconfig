(local uu (require :dotfiles.utils))

[(uu.tx :junegunn/fzf {:init (uu.lc :fzf)})
 :junegunn/fzf.vim
 (uu.tx :dyng/ctrlsf.vim {:init (uu.lc :ctrlsf)})
 (uu.tx :windwp/nvim-spectre {:init (uu.lc :nvim-spectre)})
 :kyazdani42/nvim-web-devicons
 (uu.tx :kyazdani42/nvim-tree.lua {:init (uu.lc :nvim-tree)})
 (uu.tx :kevinhwang91/rnvimr
        {:keys [(uu.tx :<c-n> ":RnvimrToggle<cr>" {:desc "Ranger toggle"})]
         :init (uu.lc :ranger)})]
