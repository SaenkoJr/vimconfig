-- [nfnl] Compiled from fnl/plugins/configs/harpoon.fnl by https://github.com/Olical/nfnl, do not edit.
local harpoon = require("harpoon")
local wk = require("which-key")
harpoon:setup({settings = {save_on_toggle = true}})
local function _1_()
  return harpoon:list():add()
end
local function _2_()
  return (harpoon.ui):toggle_quick_menu(harpoon:list())
end
wk.register({h = {a = {_1_, "Add to harpoon list"}, l = {_2_, "Show harpoon list"}}}, {prefix = "<leader>"})
local function _3_()
  return harpoon:list():prev()
end
vim.keymap.set("n", "<a-k>", _3_)
local function _4_()
  return harpoon:list():next()
end
return vim.keymap.set("n", "<a-j>", _4_)
