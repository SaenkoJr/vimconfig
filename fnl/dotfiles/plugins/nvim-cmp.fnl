(module dotfiles.plugins.nvim-cmp
  {require {cmp cmp
            util dotfiles.util
            lspkind dotfiles.lsp.lspkind
            core aniseed.core}})

(cmp.setup
  {:completion {:keyword_length 2}
   :ghost_text true
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
   :sources (cmp.config.sources
              [{:name :nvim_lsp
                :priority 10}
               {:name :conjure
                :trigger_characters ["." "/"]
                :priority 4}
               {:name :path}
               {:name :luasnip
                :priority 3}
               {:name :nvim_lua
                :priority 4}
               {:name :orgmode}
               {:name :buffer
                :max_item_count 15
                :priority 1}])
   :window {:col_offset -3
            :side_padding 0}
   :formatting {:fields ["menu" "abbr" "kind"]
                :format (fn [entry vim_item]
                          (tset vim_item :menu (. lspkind.menu_icons entry.source.name))
                          (tset vim_item :kind (.. "  " (. lspkind.menu_kind vim_item.kind)))
                          vim_item)}})

(util.inoremap :<c-k> "pumvisible() ? '<c-p>' : '<c-k>'" {:expr true})
(util.inoremap :<c-j> "pumvisible() ? '<c-n>' : '<c-j>'" {:expr true})
