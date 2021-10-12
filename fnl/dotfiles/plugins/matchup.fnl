(module dotfiles.plugins.matchup
  {require {util dotfiles.util
            nvim aniseed.nvim}})

(nvim.ex.autocmd
  :FileType
  "clojure,racket,fennel"
  "let  b:matchup_enabled=0")

(util.set-var :g :matchup_mouse_enabled 0)
(util.set-var :g :matchup_matchparen_offscreen {:method :popup})

