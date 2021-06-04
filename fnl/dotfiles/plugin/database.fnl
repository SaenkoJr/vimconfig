(module dotfiles.plugin.database
  {require {util dotfiles.util}})

(util.set-var :g :db_ui_auto_execute_table_helpers 1)
(util.set-var :g :db_ui_show_database_icon 1)
(util.set-var :g :db_ui_use_nerd_fonts 1)
(util.set-var :g :db_ui_winwidth 60)
(util.set-var :g :vim_dadbod_completion_mark " [dadbob]")

(util.noremap :n :<F4> ":DBUIToggle<cr>")
