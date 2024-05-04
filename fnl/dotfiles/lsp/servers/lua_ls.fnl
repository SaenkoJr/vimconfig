(fn build [on-attach capabilities]
  {:settings {:Lua {:runtime {:version "LuaJIT"}
                    :diagnostics {:globals [:vim :use :map :bmap]}
                    :telemetry {:enable false}
                    :workspace {:library {(vim.fn.expand "$VIMRUNTIME/lua") true
                                          (vim.fn.expand "$VIMRUNTIME/lua/vim/lsp") true}}}}
   :capabilities capabilities
   :on_attach on-attach})

{: build}
