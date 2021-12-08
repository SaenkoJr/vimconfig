(module dotfiles.plugin.git
  {require {util dotfiles.util}})

(util.noremap :n :<leader>gs ":G<cr>")
(util.noremap :n :<leader>gb ":Git blame<cr>")
(util.noremap :n :<leader>gc "<cmd>Telescope git_commits<cr>")
(util.noremap :n :<leader>GC "<cmd>lua require('telescope.builtin').git_commits({ git_command = {'git','log','--pretty=oneline','--abbrev-commit','--','.'} })<cr>")
