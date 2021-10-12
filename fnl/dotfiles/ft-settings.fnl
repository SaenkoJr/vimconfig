(module dotfiles.ft-settings
  {require {core aniseed.core
            utils dotfiles.util}})

;; Rust
(utils.set-var :g :rust_recommended_style 0)
