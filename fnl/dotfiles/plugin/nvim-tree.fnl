(module dotfiles.plugin.nvim-tree
  {require {util dotfiles.util}})

(util.set-var :g :nvim_tree_width 45)

(util.noremap :n :<F9> ":NvimTreeToggle<CR>")
