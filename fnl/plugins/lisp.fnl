(local uu (require :dotfiles.utils))

[(uu.tx :eraserhd/parinfer-rust {:build "cargo build --release"
                                 :ft [:fennel :clojure :racket :scheme]
                                 :config (fn [] (require :plugins.configs.parinfer))})
 :wlangstroth/vim-racket
 ; :guns/vim-sexp
 ; :tpope/vim-sexp-mappings-for-regular-people
 :clojure-vim/clojure.vim
 :tpope/vim-salve
 ; :tpope/vim-classpath
 (uu.tx :clojure-vim/vim-jack-in {:config (fn [] (require :plugins.configs.vim-jack-in))})
 :radenling/vim-dispatch-neovim]
