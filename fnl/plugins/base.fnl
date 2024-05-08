(local uu (require :dotfiles.utils))

[(uu.tx :Olical/conjure {:branch :develop
                         :config (uu.lc :conjure)})
 :m00qek/baleia.nvim
 :nvim-lua/plenary.nvim
 :nvim-lua/popup.nvim]
