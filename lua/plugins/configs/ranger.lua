-- [nfnl] Compiled from fnl/plugins/configs/ranger.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
local config
local function _1_()
  uu["set-var"]("g", "rnvimr_enable_picker", 1)
  uu["set-var"]("g", "rnvimr_enable_ex", 1)
  uu["set-var"]("g", "rnvimr_enable_bw", 1)
  uu["set-var"]("g", "rnvimr_vanila", 1)
  uu["set-var"]("g", "rnvimr_action", {["<c-x>"] = "NvimEdit split false", ["<c-v>"] = "NvimEdit vsplit false", ["<c-e>"] = "NvimEdit edit", gw = "JumpNvimCwd"})
  return uu["set-var"]("g", "rnvimr_presets", {{width = 0.9, height = 0.9}})
end
config = _1_
return {config = config}
