(module dotfiles.plugins.telescope
  {require {util dotfiles.util
            core aniseed.core
            telescope telescope
            actions telescope.actions}})

(telescope.load_extension :fzy_native)
(telescope.setup
  {:defaults
   {:layout_config {:width 0.95
                    :height 0.95
                    :prompt_position :top}
    :prompt_prefix ">> "
    :initial_mode :normal
    :vimgrep_arguments ["rg" "--no-heading"
                        "--with-filename" "--line-number"
                        "--column" "--smart-case" "--only-matching"
                        "-w" "--hidden"]
    :file_ignore_patterns ["node_modules" ".git/*"]
    :mappings {:i {:<C-k> actions.move_selection_previous
                   :<C-j> actions.move_selection_next
                   :<C-i> actions.toggle_selection}}}
                   ; :<C-l> actions.get_current_line}}}
   :extensions {:fzy_native {:override_generic_sorter false
                             :override_file_sorter true}}})

; (util.noremap :n :<leader>ff "<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files <cr>")

(util.noremap :n :<F1> "<cmd>Telescope help_tags<cr>")
(util.noremap :n :<leader>fb "<cmd>Telescope buffers<cr>")
(util.noremap :n :<leader>fn ":Telescope grep_string<cr>")

(util.noremap :n :<leader>ds "<cmd>Telescope lsp_document_symbols<cr>")
(util.noremap :n :<leader>lg "<cmd>Telescope live_grep<cr>")
