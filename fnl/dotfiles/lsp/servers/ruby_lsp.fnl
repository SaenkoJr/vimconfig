(local util (require :lspconfig.util))

(fn build [on-attach capabilities]
  {:settings {}
   :root_dir (util.root_pattern "Gemfile" ".git" "*.rb")
   :capabilities capabilities
   :on_attach on-attach})

{: build}
