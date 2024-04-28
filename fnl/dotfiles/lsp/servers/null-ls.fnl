(local null-ls (require :null-ls))

(local code_actions [null-ls.builtins.code_actions.eslint_d])

(local diagnostics [null-ls.builtins.diagnostics.rubocop
                    null-ls.builtins.diagnostics.luacheck
                    null-ls.builtins.diagnostics.eslint_d])
; null-ls.builtins.diagnostics.commitlint])

(local formatters [null-ls.builtins.formatting.rubocop
                   null-ls.builtins.formatting.lua_format
                   null-ls.builtins.formatting.eslint_d])
