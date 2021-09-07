(module dotfiles.plugin.nvim-tree
  {require {util dotfiles.util}})

(util.set-var :g :nvim_tree_width 45)
(util.set-var :g :nvim_tree_indent_markers 1)
(util.set-var :g :nvim_tree_hijack_netrw 0)
(util.set-var :g :nvim_tree_highlight_opened_files 2)
(util.set-var :g :nvim_tree_follow 1)

(util.noremap :n :<F12> ":NvimTreeToggle<CR>")

