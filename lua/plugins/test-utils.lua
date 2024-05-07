-- [nfnl] Compiled from fnl/plugins/test-utils.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("janko-m/vim-test", {}), uu.tx("nvim-neotest/neotest", {init = uu.lc("test"), dependencies = {"nvim-neotest/nvim-nio", "nvim-lua/plenary.nvim", "olimorris/neotest-rspec"}})}
