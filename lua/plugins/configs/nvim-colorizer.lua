-- [nfnl] Compiled from fnl/plugins/configs/nvim-colorizer.fnl by https://github.com/Olical/nfnl, do not edit.
local colorizer = require("colorizer")
return colorizer.setup({filetypes = {"*"}}, {tailwind = true, sass = {enable = true}})
