(module saenkomm.plugin.git
  {require {util saenkomm.util}})

(util.set-var :g :gitblame_enabled 0)
(util.set-var :g :gitblame_message_template "    - <author> • <date> • <sha> • <summary>")
(util.set-var :g :gitblame_date_format "%d %B %Y")

(util.noremap :n :<leader>gs ":G<cr>")
(util.noremap :n :<leader>gb ":GitBlameToggle<cr>")
(util.noremap :n :<leader>GB ":Git blame<cr>")
(util.noremap :n :<leader>gc "<cmd>Telescope git_commits<cr>")
(util.noremap :n :<leader>GC "<cmd>Telescope git_bcommits<cr>")
; (util.noremap :n :<leader>GC "<cmd>lua require('telescope.builtin').git_commits({ git_command = {'git','log','--pretty=oneline','--abbrev-commit','--','.'} })<cr>")
