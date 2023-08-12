(module saenkomm.plugins.emmet
  {require {util saenkomm.util
            nvim aniseed.nvim}})

(util.set-var :g :user_emmet_mode "i")
(util.set-var :g :user_emmet_leader_key "<c-e>")
(util.set-var :g :user_emmet_install_global 0)
(nvim.ex.autocmd
  :FileType
  "html,xhtml,css,scss,erb,eruby,html.erb,javascript.jsx,jsx"
  :EmmetInstall)
