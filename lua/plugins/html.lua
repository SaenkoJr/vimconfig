-- [nfnl] Compiled from fnl/plugins/html.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("windwp/nvim-ts-autotag", {init = uu.lc("autotag")}), uu.tx("mattn/emmet-vim", {init = uu.lc("emmet")})}
