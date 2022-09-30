(module dotfiles.plugins.telescope
  {require {util dotfiles.util
            core aniseed.core
            telescope telescope
            actions telescope.actions
            builtin telescope.builtin}})

(def- vimgrep-opts
  ["rg"
   "--color=never"
   "--no-heading"
   "--with-filename"
   "--line-number"
   "--column"
   "--smart-case"
   "--only-matching"
   "-w"
   "--hidden"])

(telescope.setup
  {:defaults
   {:layout_config {:width 0.95
                    :height 0.95
                    :prompt_position :bottom}
    :prompt_prefix ">> "
    :initial_mode :normal
    :vimgrep_arguments vimgrep-opts
    :file_ignore_patterns ["node_modules" ".git" "^log/" "%.log" "^storage/" "%.lock"
                           "^tmp/" "%.keep" "%.key"]
    :mappings {:i {:<C-k> actions.move_selection_previous
                   :<C-j> actions.move_selection_next
                   :<C-i> actions.toggle_selection
                   :<C-s> actions.cycle_previewers_next
                   :<C-a> actions.cycle_previewers_prev
                   :<C-u> false
                   :q actions.close}}}
   :pickers
   {:buffers {:theme :dropdown
              :layout_config {:width 0.45
                              :height 0.3
                              :prompt_position :top}
              :path_display {:truncate 5}
              :mappings
              {:n {:<c-d> actions.delete_buffer
                   :q actions.close}}}
    :diagnostics {:theme :dropdown
                  :layout_config {:width 0.55
                                  :height 0.3
                                  :prompt_position :top}
                  :path_display {:truncate 5}
                  :mappings
                  {:n {:q actions.close}}}}
   :extensions
   {:fzf {:fuzzy true
          :override_file_sorter true
          :override_generic_sorter true
          :case_mode :smart_case}}})
(telescope.load_extension :fzf)

(util.noremap :n :<F1> "<cmd>Telescope help_tags<cr>")
(util.noremap :n :<leader>ob "<cmd>Telescope buffers<cr>")
(util.noremap :n :<leader>td "<cmd>Telescope diagnostics<cr>")
(util.noremap :n :<leader>fn "<cmd>Telescope grep_string<cr>")

(util.noremap :n :<leader>ds "<cmd>Telescope lsp_document_symbols<cr>")
(util.noremap :n :<leader>lg "<cmd>Telescope live_grep<cr>")

; (util.noremap :n :<leader>ff "<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files <cr>")
