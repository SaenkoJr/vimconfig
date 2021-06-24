(module dotfiles.plugin.nvim-tree
  {require {util dotfiles.util}})

(util.set-var :g :nvim_tree_width 45)
(util.set-var :g :nvim_tree_indent_markers 0)
(util.set-var :g :nvim_tree_hijack_netrw 0)

(util.noremap :n :<F9> ":NvimTreeToggle<CR>")

