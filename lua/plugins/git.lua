-- [nfnl] Compiled from fnl/plugins/git.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("tpope/vim-fugitive", {init = uu.lc("git")}), uu.tx("airblade/vim-gitgutter", {}), uu.tx("f-person/git-blame.nvim", {})}
