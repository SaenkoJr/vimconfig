-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/easyalign.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.easyalign, {[require] = {[util] = saenkomm.util}})
util.noremap("n", "ga", "<Plug>(EasyAlign)", {noremap = false})
util.noremap("x", "ga", "<Plug>(EasyAlign)", {noremap = false})
return util.noremap("x", "GA", "<Plug>(LiveEasyAlign)", {noremap = false})
