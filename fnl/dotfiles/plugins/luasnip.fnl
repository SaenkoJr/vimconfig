(module dotfiles.luasnip
  {require {util dotfiles.util
            luasnip luasnip
            core aniseed.core
            fennelsnip dotfiles.snippets.fennelsnip
            rubysnip dotfiles.snippets.rubysnip}})

(util.inoremap :<Tab> "luasnip#expand_or_jumpable() ? '<plug>luasnip-expand-or-jump' : '<Tab>'" {:noremap false :expr true})
(util.noremap :s :<Tab> "luasnip#expand_or_jumpable() ? '<plug>luasnip-expand-or-jump' : '<Tab>'" {:noremap false :expr true})

(util.inoremap :<S-Tab> "<cmd>lua require('luasnip').jump(-1)<Cr>")
(util.noremap :s :<S-Tab> "<cmd>lua require('luasnip').jump(-1)<Cr>")

; NOTE: ls.praser.parse_snippet(<text>, <VS**** style snippet>)
(luasnip.add_snippets :fennel fennelsnip.snippets)
(luasnip.add_snippets :ruby rubysnip.snippets)
