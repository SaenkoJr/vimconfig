(module dotfiles.plugin.telescope
  {require {util dotfiles.util
            telescope telescope
            actions telescope.actions}})

(telescope.setup
  {:defaults {:vimgrep_arguments ["rg" "--no-heading"
                                  "--with-filename" "--line-number"
                                  "--column" "--smart-case" "--only-matching"
                                  "-w" "--hidden"]
              :file_ignore_patterns ["node_modules/" ".git/"]
              :mappings {:i {:<C-> actions.close
                             :<C-k> actions.move_selection_previous
                             :<C-j> actions.move_selection_next
                             :<C-i> actions.toggle_selection
                             :<C-l> actions.get_current_line}}}})

