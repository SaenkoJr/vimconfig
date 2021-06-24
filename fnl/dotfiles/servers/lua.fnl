(module dotfiles.servers.lua
  {require {core aniseed.core}})

(def sumneko_root_path (.. (os.getenv "HOME") "/binaries/lua-language-server"))
(def sumneko_bin (.. sumneko_root_path "/bin/Linux/lua-language-server"))

(defn setup [config on-attach]
  (config.sumneko_lua.setup
    {:cmd [sumneko_bin "-E" (.. sumneko_root_path "/main.lua")]
     :settings {:Lua
                {:runtime {:version "LuaJIT"}
                 :diagnostics {:globals [:vim :use :map :bmap]}
                 :workspace {:library {(vim.fn.expand "$VIMRUNTIME/lua") true
                                       (vim.fn.expand "$VIMRUNTIME/lua/vim/lsp") true}}}}
     :on_attach on-attach}))
