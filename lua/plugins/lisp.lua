-- [nfnl] Compiled from fnl/plugins/lisp.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
local function _1_()
  return require("plugins.configs.parinfer")
end
local function _2_()
  return require("plugins.configs.vim-jack-in")
end
return {uu.tx("eraserhd/parinfer-rust", {build = "cargo build --release", ft = {"fennel", "clojure", "racket", "scheme"}, config = _1_}), "wlangstroth/vim-racket", "clojure-vim/clojure.vim", "tpope/vim-salve", uu.tx("clojure-vim/vim-jack-in", {config = _2_}), "radenling/vim-dispatch-neovim"}
