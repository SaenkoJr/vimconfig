(local uu (require :dotfiles.utils))

[(uu.tx :windwp/nvim-ts-autotag {:init (uu.lc :autotag)})
 (uu.tx :mattn/emmet-vim {:init (uu.lc :emmet)})]
