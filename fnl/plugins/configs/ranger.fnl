(local uu (require :dotfiles.utils))

(local config
  (fn []
    (uu.set-var :g :rnvimr_enable_picker 1)
    (uu.set-var :g :rnvimr_enable_ex 1)
    (uu.set-var :g :rnvimr_enable_bw 1)
    (uu.set-var :g :rnvimr_vanila 1)
    (uu.set-var :g :rnvimr_action {:<c-x> "NvimEdit split false"
                                   :<c-v> "NvimEdit vsplit false"
                                   :<c-e> "NvimEdit edit"
                                   :gw :JumpNvimCwd})
    (uu.set-var :g :rnvimr_presets [{:width 0.900 :height 0.900}])))

(uu.noremap :n :<c-n> ":RnvimrToggle<cr>")

{: config}
