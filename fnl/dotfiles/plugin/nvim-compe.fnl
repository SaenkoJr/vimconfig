(module dotfiles.plugin.nvim-compe
  {require {cmp cmp
            core aniseed.core
            nvim aniseed.nvim
            util dotfiles.util}})

(def- menu_icons {:path     " [path]"
                  :vsnip    " [snippet]"
                  :nvim_lsp " [lsp]"
                  :conjure  " [conjure]"
                  :buffer   " [buffer]"
                  :nvim_lua " [lua]"
                  :omni     "𐂷 [omni]"})

(def- menu_kind {:Text          "  [text]"
                 :Method        " [method]"
                 :Function      " [function]"
                 :Constructor   " [constructor]"
                 :Field         "ﰠ [field]"
                 :Variable      " [variable]"
                 :Class         " [class]"
                 :Interface     " [interface]"
                 :Module        " [module]"
                 :Property      " [property]"
                 :Unit          " [unit]"
                 :Value         " [value]"
                 :Enum          " [enum]"
                 :Keyword       " [key]"
                 :Snippet       " [snippet]"
                 :Color         " [color]"
                 :File          " [file]"
                 :Reference     " [reference]"
                 :Folder        " [folder]"
                 :EnumMember    " [enum member]"
                 :Constant      " [constant]"
                 :Struct        " [struct]"
                 :Event         "⌘ [event]"
                 :Operator      " [operator]"
                 :TypeParameter "⌂ [type]"})

(cmp.setup
  {:mapping {:<c-space> (cmp.mapping.complete)
             :<c-y>     (cmp.mapping.confirm {:select true})
             :<c-e>     (cmp.mapping.abort)
             :<c-m>     (cmp.mapping.confirm {:behavior cmp.ConfirmBehavior.Replace
                                              :select false})}
   :sources [{:name :nvim_lsp}
             {:name :buffer}
             {:name :vsnip}
             {:name :nvim_lua}
             {:name :conjure}
             {:name :path}]
   :formatting {:format (fn [entry vim_item]
                          (tset vim_item :menu (. menu_icons entry.source.name))
                          (tset vim_item :kind (. menu_kind entry.source.name))
                          vim_item)}})

(util.inoremap :<c-k> "pumvisible() ? '<c-p>' : '<c-k>'" {:expr true})
(util.inoremap :<c-j> "pumvisible() ? '<c-n>' : '<c-j>'" {:expr true})

;; --------------- Snippets
(util.set-var :g :vsnip_snippet_dir (.. (os.getenv :HOME) "/.config/nvim/private-snips"))

(util.inoremap :<C-l> "vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-l>'" {:expr true :noremap false})
(util.noremap :s :<C-l> "vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-l>'" {:expr true :noremap false})

(util.inoremap :<Tab> "vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'" {:expr true :noremap false})
(util.noremap :s :<Tab>  "vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'" {:expr true :noremap false})

(util.inoremap :<S-Tab> "vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'" {:expr true :noremap false})
(util.noremap :s :<S-Tab>  "vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'" {:expr true :noremap false})

(util.noremap :v :<leader>s ":VsnipYank<cr>")
