-- [nfnl] Compiled from fnl/plugins/configs/database.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.database, {[require] = {[util] = saenkomm.util}})
util["set-var"]("g", "db_ui_auto_execute_table_helpers", 1)
util["set-var"]("g", "db_ui_show_database_icon", 1)
util["set-var"]("g", "db_ui_use_nerd_fonts", 1)
util["set-var"]("g", "db_ui_winwidth", 60)
util["set-var"]("g", "vim_dadbod_completion_mark", "\239\134\178 [dadbob]")
return util.noremap("n", "<F4>", ":tabedit<cr>:DBUIToggle<cr>")
