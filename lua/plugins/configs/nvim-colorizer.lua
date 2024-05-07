-- [nfnl] Compiled from fnl/plugins/configs/nvim-colorizer.fnl by https://github.com/Olical/nfnl, do not edit.
local colorizer = require("colorizer")
return colorizer.setup({filetypes = {"*"}, user_default_options = {tailwind = true, sass = {enable = true}}})
