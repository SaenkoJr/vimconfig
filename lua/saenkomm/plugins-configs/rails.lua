-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/rails.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.rails, {[require] = {[util] = saenkomm.util}})
util.noremap("n", "]r", ":RE<cr>")
util.noremap("n", "]a", ":AE<cr>")
util.noremap("n", "]R", ":RV<cr>")
util.noremap("n", "]A", ":AV<cr>")
return util["set-var"]("g", "ragtag_global_maps", 1)
