-- [nfnl] Compiled from fnl/plugins/completion.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("hrsh7th/nvim-cmp", {init = uu.lc("nvim-cmp")}), uu.tx("hrsh7th/cmp-buffer", {}), uu.tx("hrsh7th/cmp-nvim-lsp", {}), uu.tx("hrsh7th/cmp-path", {}), uu.tx("saadparwaiz1/cmp_luasnip", {}), uu.tx("PaterJason/cmp-conjure", {}), uu.tx("ray-x/lsp_signature.nvim", {event = "VeryLazy", config = uu.lc("lsp-signature")}), uu.tx("zbirenbaum/copilot-cmp", {}), uu.tx("L3MON4D3/LuaSnip", {init = uu.lc("luasnip")})}
