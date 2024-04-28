-- [nfnl] Compiled from fnl/lsp/servers/null-ls.fnl by https://github.com/Olical/nfnl, do not edit.
local null_ls = require("null-ls")
local code_actions = {null_ls.builtins.code_actions.eslint_d}
local diagnostics = {null_ls.builtins.diagnostics.rubocop, null_ls.builtins.diagnostics.luacheck, null_ls.builtins.diagnostics.eslint_d}
local formatters = {null_ls.builtins.formatting.rubocop, null_ls.builtins.formatting.lua_format, null_ls.builtins.formatting.eslint_d}
return nil
