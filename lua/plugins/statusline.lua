-- [nfnl] Compiled from fnl/plugins/statusline.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("nvim-lualine/lualine.nvim", {init = uu.lc("lualine-nvim")}), uu.tx("akinsho/nvim-bufferline.lua", {tag = "v4.5.2", init = uu.lc("bufferline")})}
