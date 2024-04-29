(local util (require :lspconfig.util))

(fn build [on-attach capabilities]
  {:filetypes [:fennel]
   :root_dir (util.root_pattern "*.fnl" ".git")
   :capabilities capabilities
   :on_attach on-attach
   :settings {:fennel
              {:workspace {:library (vim.api.nvim_list_runtime_paths)}
               :diagnostics {:globals [:vim]}}}})

{: build}
