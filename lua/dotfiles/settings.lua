-- [nfnl] Compiled from fnl/dotfiles/settings.fnl by https://github.com/Olical/nfnl, do not edit.
local nvim = require("aniseed.nvim")
local core = require("aniseed.core")
local utils = require("dotfiles.utils")
utils["set-var"]("g", "python_host_prog", "$HOME/.asdf/shims/python2")
utils["set-var"]("g", "python3_host_prog", "$HOME/.asdf/shims/python3")
utils["set-var"]("g", "ruby_host_prog", "$HOME/.asdf/shims/ruby")
utils["set-var"]("g", "loaded_netrw", 1)
utils["set-var"]("g", "loaded_netrwPlugin", 1)
nvim.ex.filetype("plugin indent on")
nvim.ex.syntax("sync minlines=256")
vim.api.nvim_create_autocmd({"TextYankPost"}, {pattern = {"*"}, command = "silent! lua vim.highlight.on_yank()"})
local global_opts = {clipboard = "unnamedplus", completeopt = "menuone,noselect", fillchars = "stlnc:-,vert:|", mouse = "a", scrolloff = 3, shortmess = (nvim.o.shortmess .. "c"), sidescrolloff = 10, pumheight = 30, regexpengine = 0, updatetime = 50}
local window_opts = {foldmethod = "expr", foldexpr = "nvim_treesitter#foldexpr()", foldnestmax = 10, foldlevel = 20}
local buffer_opts = {shiftwidth = 2, tabstop = 2, synmaxcol = 300, textwidth = 0}
local enabled = {"cindent", "expandtab", "wildmenu", "smartindent", "smartcase", "smarttab", "splitbelow", "splitright", "lazyredraw", "hidden", "hlsearch", "ignorecase", "incsearch", "autowrite", "showcmd", "breakindent", "number", "relativenumber"}
local disabled = {"nobk", "nojs", "nosmd", "noswapfile", "nolz", "nowrap"}
utils["nvim-sets"](enabled)
utils["nvim-sets"](disabled)
utils["set-options"](global_opts)
utils["set-options"](window_opts)
return utils["set-options"](buffer_opts)