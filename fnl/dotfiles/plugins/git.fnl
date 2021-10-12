(module dotfiles.plugin.git
  {require {util dotfiles.util}})

(util.noremap :n :<leader>gs ":G<cr>")
(util.noremap :n :<leader>gc "<cmd>Telescope git_commits<cr>")
