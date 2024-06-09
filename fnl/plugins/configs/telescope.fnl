(local uu (require :dotfiles.utils))
(local telescope (require :telescope))
(local actions (require :telescope.actions))
(local wk (require :which-key))

(local vimgrep-opts
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
    :file_ignore_patterns ["node_modules" ".git" "^log/"
                           "%.log" "^storage/" "%.lock"
                           "^tmp/" "%.keep" "%.key"]
    :mappings {:i {:<C-k> actions.move_selection_previous
                   :<C-j> actions.move_selection_next
                   :<C-i> actions.toggle_selection
                   :<C-s> actions.cycle_previewers_next
                   :<C-a> actions.cycle_previewers_prev
                   :<C-u> false}
               :n {:q actions.close}}}
   :pickers {:buffers {:theme :dropdown
                       :layout_config {:width 0.75
                                       :height 0.55
                                       :prompt_position :top}
                       :path_display {:truncate 5}
                       :mappings {:n {:<c-d> actions.delete_buffer
                                      :q actions.close}}}
             :diagnostics {:theme :dropdown
                           :layout_config {:width 0.75
                                           :height 0.55
                                           :prompt_position :top}
                           :path_display {:truncate 5}
                           :mappings {:n {:q actions.close}}}}
   :extensions {:fzf {:fuzzy true
                      :override_file_sorter true
                      :override_generic_sorter true
                      :case_mode :smart_case}
                :ui-select {:theme :dropdown
                            :layout_config {:width 0.75
                                            :height 0.55
                                            :prompt_position :top}
                            :mappings {:n {:q actions.close}}}}})

(telescope.load_extension :fzf)
(telescope.load_extension :ui-select)
(telescope.load_extension :harpoon)

(uu.noremap :n :<F1> "<cmd>Telescope help_tags<cr>")
(uu.noremap :n :<leader>ob "<cmd>Telescope buffers<cr>")

(uu.noremap :n :<leader>fn "<cmd>Telescope grep_string<cr>")
(uu.noremap :v :<leader>fn "<cmd>Telescope grep_string<cr>")

(uu.noremap :n :<leader>lg "<cmd>Telescope live_grep<cr>")

(wk.register
  {:tg {:name "Telescope git"
        :b ["<cmd>Telescope git_branches<cr>" "Open git branches"]
        :C ["<cmd>Telescope git_commits<cr>" "Open git commits"]
        :c ["<cmd>Telescope git_bcommits<cr>" "Open current file commits"]
        :s ["<cmd>Telescope git_status<cr>" "Open git status"]}}
  {:prefix :<leader>})
