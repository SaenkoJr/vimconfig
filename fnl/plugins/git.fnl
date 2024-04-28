(local uu (require :dotfiles.utils))

[(uu.tx :tpope/vim-fugitive {:init (uu.lc :git)})
 (uu.tx :airblade/vim-gitgutter {})
 (uu.tx :f-person/git-blame.nvim {})]
