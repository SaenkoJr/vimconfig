-- [nfnl] Compiled from fnl/lazy-setup.fnl by https://github.com/Olical/nfnl, do not edit.
local core = require("aniseed.core")
local uu = require("dotfiles.utils")
local setup
local function _1_()
  uu["set-var"]("g", "rnvimr_enable_picker", 1)
  uu["set-var"]("g", "rnvimr_enable_ex", 1)
  uu["set-var"]("g", "rnvimr_enable_bw", 1)
  uu["set-var"]("g", "rnvimr_vanila", 1)
  uu["set-var"]("g", "rnvimr_action", {["<c-x>"] = "NvimEdit split false", ["<c-v>"] = "NvimEdit vsplit false", ["<c-e>"] = "NvimEdit edit", gw = "JumpNvimCwd"})
  return uu["set-var"]("g", "rnvimr_presets", {{width = 0.9, height = 0.9}})
end
setup = {"Olical/conjure", uu.tx("kevinhwang91/rnvimr", {keys = {uu.tx("<c-n>", ":RnvimrToggle<cr>", {desc = "Ranger toggle"})}, config = _1_}), "m00qek/baleia.nvim", "nvim-lua/plenary.nvim", "nvim-lua/popup.nvim"}
return core.concat(setup)
