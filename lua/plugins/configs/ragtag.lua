-- [nfnl] Compiled from fnl/plugins/configs/ragtag.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.ragtag, {[require] = {[util] = saenkomm.util}})
util.noremap("n", "]r", ":RE<cr>")
util.noremap("n", "]a", ":AE<cr>")
util.noremap("n", "]R", ":RV<cr>")
util.noremap("n", "]A", ":AV<cr>")
return util["set-var"]("g", "ragtag_global_maps", 1)
