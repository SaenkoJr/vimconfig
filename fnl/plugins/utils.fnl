(local uu (require :dotfiles.utils))

[(uu.tx :windwp/nvim-autopairs {:init (uu.lc :auto-pairs)
                                :event :InsertEnter})
 (uu.tx :lukas-reineke/indent-blankline.nvim {:init (uu.lc :indentline)})
 (uu.tx :airblade/vim-rooter {:init (uu.lc :rooter)})
 (uu.tx :junegunn/vim-easy-align {:init (uu.lc :easyalign)})
 ; (uu.tx :glts/vim-textobj-comment {:lazy false})
 ; (uu.tx :kana/vim-textobj-function {:lazy false})
 ; (uu.tx :kana/vim-textobj-indent {:lazy false})
 ; (uu.tx :kana/vim-textobj-user {:lazy false})
 (uu.tx :ntpeters/vim-better-whitespace {:init (uu.lc :better-whitespace)})
 (uu.tx :AndrewRadev/splitjoin.vim {})
 (uu.tx :mhinz/vim-startify {:init (uu.lc :startify)})
 ; (uu.tx :goolord/alpha-nvim {:init :alpha-nvim})
 ;; --- Commebter
 (uu.tx :JoosepAlviste/nvim-ts-context-commentstring {})
 (uu.tx :echasnovski/mini.comment {:init (uu.lc :commenter)})
 (uu.tx :rhysd/clever-f.vim {:init (uu.lc :clever-f)})
 (uu.tx :skywind3000/asyncrun.vim {:init (uu.lc :asyncrun)})
 (uu.tx :szw/vim-maximizer {})
 (uu.tx :talek/obvious-resize {:init (uu.lc :obvious-resize)})
 (uu.tx :tpope/vim-abolish {}) ; crs, crm, crc, crs, cru, etc...
 (uu.tx :tpope/vim-dispatch {})
 (uu.tx :tpope/vim-jdaddy {:ft [:json]})
 (uu.tx :tpope/vim-ragtag {})
 (uu.tx :tpope/vim-repeat {})
 (uu.tx :tpope/vim-surround {:init (uu.lc :surround)})
 (uu.tx :echasnovski/mini.surround {:init (uu.lc :surround)})
 (uu.tx :tpope/vim-unimpaired {}) ; [q, ]q, etc
 (uu.tx :voldikss/vim-floaterm {:init (uu.lc :floaterm)})
 (uu.tx :andymass/vim-matchup {:init (uu.lc :matchup)})
 (uu.tx :gelguy/wilder.nvim {:lazy false
                             :init (uu.lc :wilder)})
 (uu.tx :jparise/vim-graphql {})
 (uu.tx :ThePrimeagen/harpoon {:init (uu.lc :harpoon)
                               :branch :harpoon2
                               :dependencies [:nvim-lua/plenary.nvim]})
 (uu.tx :dhruvasagar/vim-table-mode {})
 (uu.tx :fabridamicelli/cronex.nvim {:init (uu.lc :cronex)})
 (uu.tx :folke/which-key.nvim {:event :VeryLazy
                               :config (uu.lc :which-key)})]
