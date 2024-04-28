(local util (require :lspconfig.util))

(fn build [on-attach capabilities]
  {:cmd [:solargraph :stdio]
   :root_dir (util.root_pattern "Gemfile" ".git" "*.rb")
   :init_options {:formatting true}
   :settings {:solargraph {:diagnostics true
                           :autoformat false}}
   :flags {:debounce_text_change 150}
   :capabilities capabilities
   :on_attach on-attach})

{: build}
