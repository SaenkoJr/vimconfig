(local msurround (require "mini.surround"))
(local util (require :dotfiles.utils))

(util.set-var :g :surround_no_insert_mappings 1)

(msurround.setup
  {:mappings {:add :gsa             ; Add surrounding in Normal and Visual modes
              :delete :gsd          ; Delete surrounding
              :find :gsf            ; Find surrounding (to the right)
              :find_left :gsF       ; Find surrounding (to the left)
              :highlight :gsh       ; Highlight surrounding
              :replace :gcs         ; Replace surrounding
              :update_n_lines :gsn} ; Update `n_lines`}
   :silent true})
