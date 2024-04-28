-- [nfnl] Compiled from fnl/plugins/treesitter.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("nvim-treesitter/nvim-treesitter", {build = "TSUpdate", init = uu.lc("treesitter"), lazy = false}), "nvim-treesitter/nvim-treesitter-textobjects", "RRethy/nvim-treesitter-endwise"}
