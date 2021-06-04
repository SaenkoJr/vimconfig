(module dotfiles.servers.efm)

(def lua-format
  {:formatCommand "npx luafmt --indent-count 2 --stdin"
   :formatStdin true})

(def eslint_d
  {:lintCommand        "eslint_d -f unix --stdin --stdin-filename ${INPUT}"
   :lintStdin          true
   :lintFormats        ["%f:%l:%c: %m"]
   :lintIgnoreExitCode true
   :formatCommand      "eslint_d --fix-to-stdout --stdin --stdin-filename=${INPUT}"
   :formatStdin        true})

(def languages
  {:lua             [lua-format]
   :javascript      [eslint_d]
   :typescript      [eslint_d]
   :javascriptreact [eslint_d]
   :typescriptreact [eslint_d]})

(defn setup [config on-attach]
  (config.efm.setup
    {:cmd ["efm-langserver" "-logfile" "/tmp/efm.log"]
     :root_dir (config.util.root_pattern ".git" (vim.fn.getcwd))
     :log_level vim.lsp.protocol.MessageType.Info
     :init_options {:documentFormatting true
                    :codeAction true}
     :filetypes [:javascript :typescript
                 :typescriptreact :javascriptreact
                 :lua :css :html :fennel]
     :settings {:lintDebounce 500
                :languages languages}
     :on_attach on-attach}))
