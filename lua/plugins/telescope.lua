-- [nfnl] Compiled from fnl/plugins/telescope.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("nvim-telescope/telescope.nvim", {init = uu.lc("telescope")}), uu.tx("nvim-telescope/telescope-fzf-native.nvim", {build = "make"}), uu.tx("luc-tielen/telescope_hoogle", {}), uu.tx("nvim-telescope/telescope-ui-select.nvim", {})}
