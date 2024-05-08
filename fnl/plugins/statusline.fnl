(local uu (require :dotfiles.utils))

[(uu.tx :nvim-lualine/lualine.nvim {:init (uu.lc :lualine-nvim)})
 (uu.tx :akinsho/nvim-bufferline.lua {:init (uu.lc :bufferline)})]
