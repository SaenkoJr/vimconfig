-- [nfnl] Compiled from fnl/plugins/configs/luasnip.fnl by https://github.com/Olical/nfnl, do not edit.
local core = require("aniseed.core")
local luasnip = require("luasnip")
local uu = require("dotfiles.utils")
uu.inoremap("<Tab>", "luasnip#expand_or_jumpable() ? '<plug>luasnip-expand-or-jump' : '<Tab>'", {expr = true, noremap = false})
uu.noremap("s", "<Tab>", "luasnip#expand_or_jumpable() ? '<plug>luasnip-expand-or-jump' : '<Tab>'", {expr = true, noremap = false})
uu.inoremap("<S-Tab>", "<cmd>lua require('luasnip').jump(-1)<Cr>")
return uu.noremap("s", "<S-Tab>", "<cmd>lua require('luasnip').jump(-1)<Cr>")
