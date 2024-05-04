-- [nfnl] Compiled from fnl/plugins/configs/ranger.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
uu["set-var"]("g", "rnvimr_enable_picker", 1)
uu["set-var"]("g", "rnvimr_enable_ex", 1)
uu["set-var"]("g", "rnvimr_enable_bw", 1)
uu["set-var"]("g", "rnvimr_vanila", 1)
uu["set-var"]("g", "rnvimr_action", {["<c-x>"] = "NvimEdit split false", ["<c-v>"] = "NvimEdit vsplit false", ["<c-e>"] = "NvimEdit edit", gw = "JumpNvimCwd"})
uu["set-var"]("g", "rnvimr_presets", {{width = 0.9, height = 0.9}})
return uu.noremap("n", "<c-n>", ":RnvimrToggle<cr>")
