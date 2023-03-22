(module dotfiles.plugins.treesitter
  {require {nvim aniseed.nvim
            parsers "nvim-treesitter.parsers"
            utils dotfiles.util}})

(nvim.ex.packadd_ :nvim-treesitter)

(def- config
  {:ensure_installed :all
   :ignore_install [:devicetree :gdscript :ledger :supercollider]
   :highlight {:enable true
               :additional_vim_regex_highlighting false}
   :indent {:enable true}
   :incremental_selection {:enable false
                           :keymaps {:init_selection :gnn
                                     :node_incremental :gnn
                                     :node_decremental :gnm
                                     :scope_incremental :gnc}}
   :endwise {:enable true}
   :textobjects {:select {:enable false
                          :keymaps {:ab "@block.outer"
                                    :ib "@block.inner"
                                    :ac "@class.outer"
                                    :ic "@class.inner"}}}
   :rainbow {:enable true
             :extended_mode false
             :max_file_lines 1000}})

  ; (tset parser_config :slim {:install_info {:url "~/Public/Projects/tree-sitter-slim"
  ;                                           :files ["src/parser.c"]}}))

(vim.schedule
  (fn []
    (def- treesitter (require "nvim-treesitter.configs"))
    (treesitter.setup config)))
