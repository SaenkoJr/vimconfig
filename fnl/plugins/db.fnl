
(local uu (require :dotfiles.utils))

[(uu.tx :tpope/vim-dadbod {:init (uu.lc :database)})
 (uu.tx :kristijanhusak/vim-dadbod-ui
        {:dependencies [:kristijanhusak/vim-dadbod-completion]})]
