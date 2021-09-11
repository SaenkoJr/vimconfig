(module dotfiles.luasnip
  {require {util dotfiles.util
            luasnip luasnip
            core aniseed.core
            fennelsnip dotfiles.snippets.fennelsnip}})

(util.inoremap :<Tab> "<cmd>lua require('luasnip').jump(1)<Cr>")
(util.noremap :s :<Tab> "<cmd>lua require('luasnip').jump(1)<Cr>")

(util.inoremap :<S-Tab> "<cmd>lua require('luasnip').jump(-1)<Cr>")
(util.noremap :s :<S-Tab> "<cmd>lua require('luasnip').jump(-1)<Cr>")

(core.assoc-in luasnip [:snippets :fennel] fennelsnip.snippets)

