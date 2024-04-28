-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/nerdcommenter.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.nerdcommenter, {[require] = {[util] = saenkomm.util}})
util["set-var"]("g", "NERDSpaceDelims", 1)
util["set-var"]("g", "NERDCreateDefaultMappings", 0)
util["set-var"]("g", "NERDDefaultAlign", "left")
util.noremap("n", "<A-/>", "<plug>NERDCommenterToggle", {noremap = false})
return util.noremap("v", "<A-/>", "<plug>NERDCommenterToggle", {noremap = false})
