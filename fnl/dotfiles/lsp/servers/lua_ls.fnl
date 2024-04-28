(local sumneko_root_path (.. (os.getenv "HOME") "/binaries/lua-language-server"))
(local sumneko_bin (.. sumneko_root_path "/bin/Linux/lua-language-server"))

(fn build [on-attach capabilities]
  {:cmd [sumneko_bin "-E" (.. sumneko_root_path "/main.lua")]
   :settings {:Lua {:runtime {:version "LuaJIT"}
                    :diagnostics {:globals [:vim :use :map :bmap]}
                    :telemetry {:enable false}
                    :workspace {:library {(vim.fn.expand "$VIMRUNTIME/lua") true
                                          (vim.fn.expand "$VIMRUNTIME/lua/vim/lsp") true}}}}
   :capabilities capabilities
   :on_attach on-attach})

{: build}
