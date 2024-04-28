(local util (require :dotfiles.utils))
(local gitblame (require :gitblame))

(gitblame.setup
  {:enabled false
   :message_template "    - <author> • <date> • <sha> • <summary>"
   :date_format "%d %B %Y"})

(util.noremap :n :<leader>gs ":G<cr>")
(util.noremap :n :<leader>gb ":GitBlameToggle<cr>")
(util.noremap :n :<leader>GB ":Git blame<cr>")
(util.noremap :n :<leader>gc "<cmd>Telescope git_commits<cr>")
(util.noremap :n :<leader>GC "<cmd>Telescope git_bcommits<cr>")
; (util.noremap :n :<leader>GC "<cmd>lua require('telescope.builtin').git_commits({ git_command = {'git','log','--pretty=oneline','--abbrev-commit','--','.'} })<cr>")
