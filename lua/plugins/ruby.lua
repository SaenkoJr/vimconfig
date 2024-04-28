-- [nfnl] Compiled from fnl/plugins/ruby.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("tpope/vim-rails", {init = uu.lc("rails")}), uu.tx("onemanstartup/vim-slim", {})}
