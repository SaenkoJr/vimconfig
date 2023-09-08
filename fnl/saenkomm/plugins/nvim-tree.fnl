(module saenkomm.plugins.nvim-tree
  {require {nvim-tree nvim-tree
            util saenkomm.util}})

(nvim-tree.setup
  {:disable_netrw false
   :hijack_cursor false
   :hijack_netrw false
   :reload_on_bufenter true
   :sync_root_with_cwd true
   :git {:enable false}
   :filters {:dotfiles true}
   :renderer {:indent_markers {:enable true}
              :icons {:show
                      {:git false}}
              :highlight_opened_files :name}
   :update_focused_file {:enable false
                         :update_cwd true
                         :ignore_list ["help"]}
   :view {:width 45}})

(util.noremap :n :<F12> ":NvimTreeToggle<CR>")
