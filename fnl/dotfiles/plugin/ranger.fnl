(module dotfiles.plugin.ranger
  {require {utils dotfiles.util}})

(utils.set-var :g :rnvimr_enable_picker 1)
(utils.set-var :g :rnvimr_enable_ex 1)
(utils.set-var :g :rnvimr_enable_bw 1)
(utils.set-var :g :rnvimr_action {:<c-x> "NvimEdit split false"
                                  :<c-v> "NvimEdit vsplit false"
                                  :<c-e> "NvimEdit edit"})

(utils.noremap :n :<c-n> ":RnvimrToggle<cr>")
