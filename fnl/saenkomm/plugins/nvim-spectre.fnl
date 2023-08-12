(module saenkomm.nvim-spectre
  {require {util saenkomm.util
            spectre spectre}})

(spectre.setup
  {:open_cmd :vnew
   :live_update true})

(util.noremap :n :<leader>SP ":lua require('spectre').open()<cr>")
(util.noremap :n :<leader>sw ":lua require('spectre').open_visual({select_word=true})<cr>")
(util.noremap :n :<leader>sf "viw:lua require('spectre').open_file_search()<cr>")
