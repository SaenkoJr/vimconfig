(local uu (require :dotfiles.utils))

[(uu.tx :nvim-lualine/lualine.nvim {:init (uu.lc :lualine-nvim)})
 (uu.tx :akinsho/nvim-bufferline.lua {:tag :v4.5.2
                                      :init (uu.lc :bufferline)})]
