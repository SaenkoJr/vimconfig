(module dotfiles.nvim-spectre
  {require {util dotfiles.util
            spectre spectre}})

(util.noremap :n :<leader>SP ":lua require('spectre').open()<cr>")
(util.noremap :n :<leader>sw ":lua require('spectre').open_visual({select_word=true})<cr>")
(util.noremap :n :<leader>sf "viw:lua require('spectre').open_file_search()<cr>")
