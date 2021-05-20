local g, api = vim.g, vim.api

g.matchup_mouse_enabled = 0
g.matchup_matchparen_offscreen = {
  method = 'popup'
}

api.nvim_exec(
  [[
    au FileType clojure,racket let b:matchup_enabled=0
  ]]
  , false
)
