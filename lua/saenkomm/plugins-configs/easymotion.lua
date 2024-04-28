-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/easymotion.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.easymotion, {[require] = {[nvim] = aniseed.nvim, [utils] = saenkomm.util}})
utils["set-var"]("g", "EasyMotion_do_mapping", 0)
utils.noremap("n", "<leader>e", "<plug>(easymotion-s)", {noremap = false})
return utils.noremap("n", "<leader>.", "<plug>(easymotion-repeat)", {noremap = false})
