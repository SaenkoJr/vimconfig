(local treesitter (require "nvim-treesitter.configs"))

(local langs
  [:c :clojure :css :cmake :comment
   :commonlisp :diff :dockerfile
   :elixir :erlang :fennel :embedded_template
   :git_config :git_rebase :gitattributes
   :gitcommit :gitignore :go :graphql
   :haskell :haskell_persistent :hjson :hlsl
   :html :htmldjango :http :ini :java :javascript
   :jq :jsdoc :json :jsonc :lua :luadoc :markdown
   :make :markdown_inline :pug :ql :query :r :racket
   :regex :ruby :rst :rust :scheme :scss :slint :sql
   :typescript :tsx :vim :yaml :vimdoc])

(local config
  {:ensure_installed langs
   :highlight {:enable true
               :disable [:txt]
               :additional_vim_regex_highlighting false}
   :indent {:enable true}
   :incremental_selection {:enable false
                           :keymaps {:init_selection :gnn
                                     :node_incremental :gnn
                                     :node_decremental :gnm
                                     :scope_incremental :gnc}}
   :textobjects {:select {:enable true
                          :keymaps {:af "@function.outer"
                                    :if "@function.inner"
                                    :ab "@block.outer"
                                    :ib "@block.inner"
                                    :ac "@class.outer"
                                    :ic "@class.inner"}}
                 :swap {:enable true
                        :swap_next {:<leader>a "@parameter.inner"}
                        :swap_previous {:<leader>A "@parameter.inner"}}}
   :endwise {:enable true}
   ; :autotag {:enable true
   ;           :filetypes [:html :javascript :typescript :javascriptreact :typescriptreact
   ;                       :svelte :vue :tsx :jsx :rescript :erb :eruby :xml :markdown]}
   :matchup {:enable true
             :disable [:clojure :racket :fennel]}})

(treesitter.setup config)
