(module dotfiles.plugins.treesitter
  {require {nvim aniseed.nvim
            parsers "nvim-treesitter.parsers"
            utils dotfiles.util}})

(nvim.ex.packadd_ :nvim-treesitter)

(def- config {:ensure_installed :all
              :ignore_install [:nix :devicetree :gdscript
                               :ocamllex :ledger :supercollider]
              :endwise {:enable true}
              :highlight {:enable true}
              :indent {:enable true
                       :disable [:yaml :yml]}
              :incremental_selection {:enable true
                                      :keymaps {:init_selection :gnn
                                                :node_incremental :gnn
                                                :node_decremental :gnm
                                                :scope_incremental :gnc}}
              :rainbow {:enable true
                        :extended_mode false
                        :max_file_lines 1000}
              :textobjects {:select {:enable false
                                     :keymaps {:ab "@block.outer"
                                               :ib "@block.inner"
                                               :ac "@class.outer"
                                               :ic "@class.inner"}}}})

  ; (tset parser_config :slim {:install_info {:url "~/Public/Projects/tree-sitter-slim"
  ;                                           :files ["src/parser.c"]}}))

(vim.schedule
  (fn []
    (def- treesitter (require "nvim-treesitter.configs"))
    (treesitter.setup config)))
