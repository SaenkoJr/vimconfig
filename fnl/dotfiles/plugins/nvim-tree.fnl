(module dotfiles.plugins.nvim-tree
  {require {nvim-tree nvim-tree
            util dotfiles.util}})

(util.set-var :g :nvim_tree_indent_markers 1)
(util.set-var :g :nvim_tree_highlight_opened_files 2)
(util.set-var :g :nvim_tree_show_icons {:git 0})

(nvim-tree.setup
  {:hijack_netrw false
   :view {:width 45}})

(util.noremap :n :<F12> ":NvimTreeToggle<CR>")

