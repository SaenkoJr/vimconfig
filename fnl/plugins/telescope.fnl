(local uu (require :dotfiles.utils))

[(uu.tx :nvim-telescope/telescope.nvim {:init (uu.lc :telescope)})
 (uu.tx :nvim-telescope/telescope-fzf-native.nvim {:build "make"})
 (uu.tx :luc-tielen/telescope_hoogle {})
 (uu.tx :nvim-telescope/telescope-ui-select.nvim {})
 (uu.tx :ThePrimeagen/harpoon {})]
