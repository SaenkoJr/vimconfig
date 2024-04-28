(local uu (require :dotfiles.utils))

[(uu.tx :AndrewRadev/tagalong.vim {:init (uu.lc :tagalong)})
 (uu.tx :alvan/vim-closetag {:init (uu.lc :closetag)})
 (uu.tx :mattn/emmet-vim {:init (uu.lc :emmet)})]
