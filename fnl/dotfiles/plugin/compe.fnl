(module dotfiles.plugin.compe
  {require {compe compe
            core aniseed.core
            nvim aniseed.nvim
            util dotfiles.util}})

(compe.setup
  {:enabled true
   :enabled true
   :autocomplete false
   :preselect :disable
   :allow_prefix_unmatch false
   :source_timeout 200
   :documentation true
   :source {:path {:menu " [path]"}
            ; :buffer {:menu " [buffer]" :priority 4}
            :vsnip {:menu " [snippet]" :priority 1}
            :nvim_lsp {:menu " [lsp]" :priority 2}
            :nvim_lua {:menu " [lua]"}
            :conjure {:menu " [conjure]" :priority 3}
            :vim_dadbod_completion {:menu " [dadbob]"}}})
            ; :omni {:menu "𐂷 [omni]"}}})

(util.inoremap :<c-space> "compe#complete()" {:expr true})
(util.inoremap :<c-y> "compe#close('<cr>')" {:expr true})
(util.inoremap :<c-c> "compe#close('<c-c>')" {:expr true})

(util.inoremap :<c-k> "pumvisible() ? '<c-p>' : '<c-k>'" {:expr true})
(util.inoremap :<c-j> "pumvisible() ? '<c-n>' : '<c-j>'" {:expr true})

(tset vim.lsp.protocol
      :CompletionItemKind
      ["  [text]" " [method]" " [function]"
       " [constructor]" "ﰠ [field]" " [variable]"
       " [class]" " [interface]" " [module]"
       " [property]" " [unit]" " [value]"
       " [enum]" " [key]" " [snippet]"
       " [color]" " [file]" " [reference]"
       " [folder]" " [enum member]" " [constant]"
       " [struct]" "⌘ [event]" " [operator]" "⌂ [type]"])

(util.set-var :g :vsnip_snippet_dir (.. (os.getenv :HOME) "/.config/nvim/private-snips"))

(util.inoremap :<C-l> "vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-l>'" {:expr true :noremap false})
(util.noremap :s :<C-l> "vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-l>'" {:expr true :noremap false})

; (util.inoremap :<C-l> "vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'" {:expr true :noremap false})
; (util.noremap :s :<C-l> "vsnip#available(1) ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'" {:expr true :noremap false})

(util.inoremap :<Tab> "vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'" {:expr true :noremap false})
(util.noremap :s :<Tab>  "vsnip#jumpable(1) ? '<Plug>(vsnip-jump-next)' : '<Tab>'" {:expr true :noremap false})

(util.inoremap :<S-Tab> "vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'" {:expr true :noremap false})
(util.noremap :s :<S-Tab>  "vsnip#jumpable(-1) ? '<Plug>(vsnip-jump-prev)' : '<S-Tab>'" {:expr true :noremap false})

(util.noremap :v :<leader>s ":VsnipYank<cr>")
