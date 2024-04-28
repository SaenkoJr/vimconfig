-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/luasnip.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.luasnip, {[require] = {[util] = saenkomm.util, [luasnip] = luasnip, [core] = aniseed.core, [fennelsnip] = saenkomm.snippets.fennelsnip, [rubysnip] = saenkomm.snippets.rubysnip}})
util.inoremap("<Tab>", "luasnip#expand_or_jumpable() ? '<plug>luasnip-expand-or-jump' : '<Tab>'", {expr = true, noremap = false})
util.noremap("s", "<Tab>", "luasnip#expand_or_jumpable() ? '<plug>luasnip-expand-or-jump' : '<Tab>'", {expr = true, noremap = false})
util.inoremap("<S-Tab>", "<cmd>lua require('luasnip').jump(-1)<Cr>")
util.noremap("s", "<S-Tab>", "<cmd>lua require('luasnip').jump(-1)<Cr>")
luasnip.add_snippets("fennel", fennelsnip.snippets)
return luasnip.add_snippets("ruby", rubysnip.snippets)
