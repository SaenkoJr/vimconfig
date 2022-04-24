(module dotfiles.plugins.nvim-cmp
  {require {cmp cmp
            util dotfiles.util
            core aniseed.core}})

(def- menu_icons {:path     " [path]"
                  :vsnip    " [snippet]"
                  :luasnip  " [snippet]"
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
  {:completion {:keyword_length 2}
   :documentation cmp.DocumentationConfig
   :mapping {:<c-space> (cmp.mapping.complete)
             :<c-j>     (cmp.mapping.select_next_item {:behavior cmp.SelectBehavior.Insert})
             :<c-k>     (cmp.mapping.select_prev_item {:behavior cmp.SelectBehavior.Insert})
             :<c-y>     (cmp.mapping.confirm {:select true})
             :<c-e>     (cmp.mapping.abort)
             :<c-l>     (cmp.mapping.confirm {:behavior cmp.ConfirmBehavior.Replace
                                              :select false})}
   :snippet {:expand (fn [args]
                       ((. (require :luasnip) :lsp_expand) args.body))}
   :sources [{:name :nvim_lsp}
             {:name :buffer}
             {:name :orgmode}
             {:name :luasnip}
             {:name :nvim_lua}
             {:name :conjure :trigger_characters ["." "/"]}
             {:name :path}]
   :formatting {:format (fn [entry vim_item]
                          (tset vim_item :menu (. menu_icons entry.source.name))
                          (tset vim_item :kind (. menu_kind entry.source.name))
                          vim_item)}})

(util.inoremap :<c-k> "pumvisible() ? '<c-p>' : '<c-k>'" {:expr true})
(util.inoremap :<c-j> "pumvisible() ? '<c-n>' : '<c-j>'" {:expr true})
