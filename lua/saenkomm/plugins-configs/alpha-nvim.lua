-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/alpha-nvim.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins["alpha-nvim"], {[require] = {[util] = saenkomm.util, [alpha] = alpha}})
__fnl_global__def_2d(startify, require("alpha.themes.startify"))
return alpha.setup({})
