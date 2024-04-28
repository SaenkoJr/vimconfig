-- [nfnl] Compiled from fnl/plugins/markdown.fnl by https://github.com/Olical/nfnl, do not edit.
local uu = require("dotfiles.utils")
return {uu.tx("iamcco/markdown-preview.nvim", {init = uu.lc("markdown"), build = "cd app && yarn install", ft = {"markdown", "md"}})}
