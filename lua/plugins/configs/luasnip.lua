-- [nfnl] Compiled from fnl/plugins/configs/luasnip.fnl by https://github.com/Olical/nfnl, do not edit.
local luasnip = require("luasnip")
local uu = require("dotfiles.utils")
local fennelsnip = require("dotfiles.snippets.fennelsnips")
local rubysnip = require("dotfiles.snippets.rubysnips")
uu.inoremap("<Tab>", "luasnip#expand_or_jumpable() ? '<plug>luasnip-expand-or-jump' : '<Tab>'", {expr = true, noremap = false})
uu.noremap("s", "<Tab>", "luasnip#expand_or_jumpable() ? '<plug>luasnip-expand-or-jump' : '<Tab>'", {expr = true, noremap = false})
uu.inoremap("<S-Tab>", "<cmd>lua require('luasnip').jump(-1)<Cr>")
uu.noremap("s", "<S-Tab>", "<cmd>lua require('luasnip').jump(-1)<Cr>")
luasnip.add_snippets("fennel", fennelsnip.snippets)
return luasnip.add_snippets("ruby", rubysnip.snippets)
