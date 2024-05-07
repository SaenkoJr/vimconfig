(local gitsigns (require :gitsigns))
(local uu (require :dotfiles.utils))
(local wk (require :which-key))

(fn on-attach []
  (do
    (wk.register
      {"]c" [(fn []
               (if vim.wo.diff
                 (vim.cmd.normal (uu.tx "]c" {:bang true}))
                 (gitsigns.nav_hunk :next)))
             "Next hunk"]})
    (wk.register
      {"[c" [(fn []
               (if vim.wo.diff
                 (vim.cmd.normal (uu.tx "[c" {:bang true}))
                 (gitsigns.nav_hunk :prev)))
             "Prev hunk"]})
    (wk.register
      {"<leader>" {:h {:name "+prefix"
                       :s [gitsigns.stage_hunk "Stage hunk"]
                       :S [gitsigns.stage_buffer "Stage buffer"]
                       :r [gitsigns.reset_hunk "Reset hunk"]
                       :R [gitsigns.reset_buffer "Reset buffer"]
                       :u [gitsigns.undo_stage_hunk "Undo stage hunk"]
                       :p [gitsigns.preview_hunk "Preview hunk"]
                       :d [gitsigns.diffthis "Show hunk diff"]
                       :D [(fn [] (gitsigns.diffthis "~")) "Show file diff"]}}})))

(gitsigns.setup
  {:on_attach on-attach})
