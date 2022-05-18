(module dotfiles.lsp.servers.efm
  {require {core aniseed.core}})

(def- rubocop
  {:formatCommand      "rubocop -a --fail-level error -f quiet --stderr -s ${INPUT}"
   :formatStdin        true
   :lintCommand        "rubocop --format emacs --force-exclusion --stdin ${INPUT}"
   :lintIgnoreExitCode true
   :lintFormats        ["%f:%l:%c: %m"]
   :lintStdin          true})

(def- lua-format
  {:formatCommand "lua-format -i"
   :formatStdin true})

(def- clj-kondo
  {:lintCommand "clj-kondo --lint -"
   :lintStdin true})

(def- slimlint
  {:lintCommand        "slim-lint -c $HOME/.config/rubocop/.slim-lint.yml --reporter emacs --stdin-file-path ${INPUT}"
   :lintFormats        ["%f:%l:%c: %m"]
   :lintIgnoreExitCode true
   :formatStdin        true
   :lintStdin          true})

(def- eslint_d
  {:lintCommand        "eslint_d -f unix --stdin --stdin-filename ${INPUT}"
   :lintStdin          true
   :lintFormats        ["%f:%l:%c: %m"]
   :lintIgnoreExitCode true
   :formatCommand      "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}"
   :formatStdin        true})

(def- languages
  {:lua             [lua-format]
   :javascript      [eslint_d]
   :typescript      [eslint_d]
   :javascriptreact [eslint_d]
   :typescriptreact [eslint_d]
   :ruby            [rubocop]
   :slim            [slimlint]})
   ; :clojure         [clj-kondo]})

(defn build [on-attach capabilities]
  {:cmd ["efm-langserver" "-logfile" "/tmp/efm.log"]
   :log_level vim.lsp.protocol.MessageType.Error
   :init_options {:documentFormatting true
                  :codeAction true
                  :hover true}
   :filetypes (core.keys languages)
   :settings {:lintDebounce 500
              :languages languages}
   :capabilities capabilities
   :on_attach on-attach})
