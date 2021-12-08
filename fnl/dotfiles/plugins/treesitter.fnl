(module dotfiles.plugins.treesitter
  {require {nvim aniseed.nvim
            parsers "nvim-treesitter.parsers"
            utils dotfiles.util}})

(nvim.ex.packadd_ :nvim-treesitter)

(def- config {:ensure_installed :maintained
              :ignore_install [:nix :devicetree :gdscript
                               :ocamllex :ledger :supercollider]
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

(let [parser_config (parsers.get_parser_configs)]
  (tset parser_config :org {:install_info {:url "https://github.com/milisims/tree-sitter-org"
                                           :revision :main
                                           :files ["src/parser.c" "src/scanner.cc"]}
                            :filetype :org}))

(vim.schedule
  (fn []
    (def- treesitter (require "nvim-treesitter.configs"))
    (treesitter.setup config)))
