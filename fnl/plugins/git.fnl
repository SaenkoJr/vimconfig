(local uu (require :dotfiles.utils))

[(uu.tx :tpope/vim-fugitive {:init (uu.lc :git)})
 (uu.tx :lewis6991/gitsigns.nvim {:init (uu.lc :gitsigns)})
 (uu.tx :f-person/git-blame.nvim)]
