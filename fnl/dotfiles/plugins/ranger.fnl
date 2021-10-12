(module dotfiles.plugins.ranger
  {require {utils dotfiles.util}})

(def- float2nr vim.fn.float2nr)
(def- round vim.fn.round)

(utils.set-var :g :rnvimr_enable_picker 1)
(utils.set-var :g :rnvimr_enable_ex 1)
(utils.set-var :g :rnvimr_enable_bw 1)
(utils.set-var :g :rnvimr_action {:<c-x> "NvimEdit split false"
                                  :<c-v> "NvimEdit vsplit false"
                                  :<c-e> "NvimEdit edit"})

(utils.set-var :g :rnvimr_presets [{:width 0.900 :height 0.900}])

(utils.noremap :n :<c-n> ":RnvimrToggle<cr>")
