(local util (require :lspconfig.util))

(fn build [on-attach capabilities]
  {:settings {"rust-analyzer"
              {:diagnostics {:styleLints {:enable true}}
               :rustfmt {:rangeFormatting {:enable true}}
               :cargo {:features :all}}}
   :capabilities capabilities
   :on_attach on-attach})

{: build}
