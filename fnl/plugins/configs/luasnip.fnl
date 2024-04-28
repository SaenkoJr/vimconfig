(local core (require :aniseed.core))
(local luasnip (require :luasnip))
(local uu (require :dotfiles.utils))

(uu.inoremap :<Tab> "luasnip#expand_or_jumpable() ? '<plug>luasnip-expand-or-jump' : '<Tab>'" {:noremap false :expr true})
(uu.noremap :s :<Tab> "luasnip#expand_or_jumpable() ? '<plug>luasnip-expand-or-jump' : '<Tab>'" {:noremap false :expr true})

(uu.inoremap :<S-Tab> "<cmd>lua require('luasnip').jump(-1)<Cr>")
(uu.noremap :s :<S-Tab> "<cmd>lua require('luasnip').jump(-1)<Cr>")

; NOTE: ls.praser.parse_snippet(<text>, <VS**** style snippet>)
; (luasnip.add_snippets :fennel fennelsnip.snippets)
; (luasnip.add_snippets :ruby rubysnip.snippets)
