-- [nfnl] Compiled from fnl/plugins/git.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("tpope/vim-fugitive", {init = uu.lc("git")}), uu.tx("lewis6991/gitsigns.nvim", {init = uu.lc("gitsigns")}), uu.tx("f-person/git-blame.nvim")}
