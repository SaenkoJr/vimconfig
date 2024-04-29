(local uu (require :dotfiles.utils))

[(uu.tx :nvim-treesitter/nvim-treesitter {:lazy false
                                          :init (uu.lc :treesitter)})
 :nvim-treesitter/nvim-treesitter-textobjects
 :RRethy/nvim-treesitter-endwise]
