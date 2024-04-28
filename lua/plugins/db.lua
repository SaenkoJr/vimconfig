-- [nfnl] Compiled from fnl/plugins/db.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("tpope/vim-dadbod", {init = uu.lc("database")}), uu.tx("kristijanhusak/vim-dadbod-ui", {dependencies = {"kristijanhusak/vim-dadbod-completion"}})}
