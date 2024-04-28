-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/clever-f.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins["clever-f"], {[require] = {[util] = saenkomm.util}})
return util.noremap("n", ";", "<Plug>(clever-f-repeat-forward)", {noremap = false})
