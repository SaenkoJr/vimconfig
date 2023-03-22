(module dotfiles.lsp.servers.null-ls
  {require {null-ls null-ls
            nvim aniseed.nvim
            c aniseed.core}})

(def- code_actions [null-ls.builtins.code_actions.eslint_d])

(def- diagnostics [null-ls.builtins.diagnostics.rubocop
                   null-ls.builtins.diagnostics.luacheck
                   null-ls.builtins.diagnostics.eslint_d])
                   ; null-ls.builtins.diagnostics.commitlint])

(def- formatters [null-ls.builtins.formatting.rubocop
                  null-ls.builtins.formatting.lua_format
                  null-ls.builtins.formatting.eslint_d])

; (null-ls.setup
;   {:diagnostics_format "[#{c}] #{m} (#{s})"
;    :sources (c.concat code_actions diagnostics formatters)})
