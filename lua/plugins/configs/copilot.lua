-- [nfnl] Compiled from fnl/plugins/configs/copilot.fnl by https://github.com/Olical/nfnl, do not edit.
local copilot = require("copilot")
local copilot_cmp = require("copilot_cmp")
copilot.setup({suggestion = {enabled = false}, panel = {enabled = true}, cmp = {enabled = true, method = "getCompletionsCycling"}, filetypes = {yaml = true}})
return copilot_cmp.setup({method = "getCompletionsCycling"})
