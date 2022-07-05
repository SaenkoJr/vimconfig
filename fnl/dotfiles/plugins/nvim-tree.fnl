(module dotfiles.plugins.nvim-tree
  {require {nvim-tree nvim-tree
            tree-conf nvim-tree.config
            util dotfiles.util}})

(def tree-cb (. tree-conf :nvim_tree_callback))

(nvim-tree.setup
  {:disable_netrw true
   :hijack_cursor true
   :reload_on_bufenter true
   :git {:enable false}
   :renderer {:indent_markers {:enable true}
              :icons {:show
                      {:git false}}
              :highlight_opened_files :name}
   :update_focused_file {:enable false
                         :update_cwd true
                         :ignore_list ["help"]}
   :view {:width 45
          :mappings {:list [{:key "?" :cb (tree-cb "toggle_help")}]}}})

(util.noremap :n :<F12> ":NvimTreeToggle<CR>")

