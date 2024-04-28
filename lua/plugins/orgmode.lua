-- [nfnl] Compiled from fnl/plugins/orgmode.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("kristijanhusak/orgmode.nvim", {init = uu.lc("orgmode")}), uu.tx("akinsho/org-bullets.nvim", {}), uu.tx("lukas-reineke/headlines.nvim", {})}
