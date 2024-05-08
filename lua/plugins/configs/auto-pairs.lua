-- [nfnl] Compiled from fnl/plugins/configs/auto-pairs.fnl by https://github.com/Olical/nfnl, do not edit.
local npairs = require("nvim-autopairs")
local rule = require("nvim-autopairs.rule")
npairs.setup({disable_filetyp = {"TelescopePrompt", "vim", "clojure", "fennel"}, map_c_h = true, map_c_w = true, disable_in_macro = true})
npairs.add_rules({rule("|", "|", "ruby")})
return npairs.add_rules({rule("<%", "%>", "eruby")})
