(local util (require :lspconfig.util))

(fn add_ruby_deps_command [client bufnr]
  (vim.api.nvim_buf_create_user_command bufnr
                                        :ShowRubyDeps
                                        (fn [opts]
                                          (let [params (vim.lsp.util.make_text_document_params)
                                                show-all (= opts.args "all")]
                                            (client.request "rubyLsp/workspace/dependencies"
                                                            params
                                                            (fn [error result]
                                                              (when (not error)
                                                                (let [qf-list {}]
                                                                  (each [_ dep (ipairs result)]
                                                                    (if (or show-all dep.dependency)
                                                                      (table.insert qf-list {:text (string.format "%s (%s) - %s" dep.name dep.version dep.dependency)
                                                                                             :filename dep.path})))
                                                                  (vim.fn.setqflist qf-list)
                                                                  (vim.cmd "copen"))))
                                                            bufnr)))
                                        {:nargs "?"
                                         :complete (fn [] ["all"])}))

(fn build [on-attach capabilities]
  {:init_options {:enabledFeatures {:diagnostics false}}
   :root_dir (util.root_pattern "Gemfile" ".git" "*.rb")
   :capabilities capabilities
   :single_file_support true
   :on_attach (fn [client bufnr]
                (add_ruby_deps_command client bufnr)
                (on-attach client bufnr))})

{: build}
