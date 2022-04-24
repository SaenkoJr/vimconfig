(module dotfiles.plugins.which-key
  {require {which-key which-key}})

(which-key.setup
  {:plugins {:spelling {:suggestions 40}}})
