(local uu (require :dotfiles.utils))

[(uu.tx :janko-m/vim-test {:init (uu.lc :test)})]
  ; :rcarriga/vim-ultest {:build ":UpdateRemotePlugins"
  ;                       :init (uu.lc :test)}
