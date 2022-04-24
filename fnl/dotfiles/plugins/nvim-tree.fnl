(module dotfiles.plugins.nvim-tree
  {require {nvim-tree nvim-tree
            tree-conf nvim-tree.config
            util dotfiles.util}})

(def tree-cb (. tree-conf :nvim_tree_callback))

(util.set-var :g :nvim_tree_highlight_opened_files 2)
(util.set-var :g :nvim_tree_show_icons {:git 0})

(nvim-tree.setup
  {:disable_netrw true
   :hijack_cursor true
   :git {:enable false}
   :renderer {:indent_markers {:enable true}}
   :update_focused_file {:enable true
                         :update_cwd true
                         :ignore_list ["help"]}
   :view {:width 45
          :mappings {:list [{:key "?" :cb (tree-cb "toggle_help")}]}}})

(util.noremap :n :<F12> ":NvimTreeToggle<CR>")

