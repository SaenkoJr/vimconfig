-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/copilot.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.copilot, {[require] = {[copilot] = copilot, [copilot_cmp] = copilot_cmp}})
copilot.setup({suggestion = {enabled = false}, panel = {enabled = true}, cmp = {enabled = true, method = "getCompletionsCycling"}, filetypes = {yaml = true}})
return copilot_cmp.setup({method = "getCompletionsCycling"})
