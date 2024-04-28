-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/asyncrun.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.asyncrun, {[require] = {[util] = saenkomm.util}})
util["set-var"]("g", "asyncrun_mode", "term")
util["set-var"]("g", "asyncrun_encs", "gbk")
util["set-var"]("g", "asyncrun_open", 30)
return util["set-var"]("g", "asyncrun_win_loc", 2)
