(module dotfiles.plugins.fzf
  {require {nvim aniseed.nvim
            util dotfiles.util
            string aniseed.string}})

(def- rg-opts ["--column"
               "--line-number"
               "--no-heading"
               "--no-ignore-vcs"
               "--fixed-strings"
               "--smart-case"
               "--hidden"
               "--follow"
               "-g \"!yarn.lock\""
               "-g \"!.git\""
               "-g \"!node_modules\""
               "-g \"!log\""
               "-- "])

(def- rg
  (.. :rg " " (string.join " " rg-opts)))

(nvim.ex.command_
  "-bang -nargs=* Rg call fzf#vim#grep('"
  rg
  "'.shellescape(<q-args>), 1,"
  "<bang>0 ? fzf#vim#with_preview(\"up:75%\") : fzf#vim#with_preview(\"right:50%\", \"?\"), <bang>0)")

(util.set-var :g :fzf_layout {:window {:width 0.9
                                       :height 0.9}})
(util.set-var :g :fzf_preview_window ["right:50%" "ctrl-/"])

(util.noremap :n :<leader>FN ":Rg <c-r><c-w><cr>")
(util.noremap :n :<leader>LG "<cmd>Rg<cr>")

(util.noremap :n :<leader>ff "<cmd>Files<cr>")
(util.noremap :n :<leader>FF "<cmd>Files ~<cr>")
