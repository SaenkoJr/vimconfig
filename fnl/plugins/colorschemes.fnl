(local uu (require :dotfiles.utils))

[(uu.tx :nvchad/nvim-colorizer.lua {:init (uu.lc :nvim-colorizer)})
 (uu.tx :NLKNguyen/papercolor-theme {})
 (uu.tx :Shatur/neovim-ayu {})
 (uu.tx :equt/paper.vim {})
 (uu.tx :folke/tokyonight.nvim {})
 (uu.tx :shaunsingh/nord.nvim {})
 (uu.tx :projekt0n/github-nvim-theme {})
 (uu.tx :jesseleite/nvim-noirbuddy {:dependencies ["tjdevries/colorbuddy.nvim"]})]
