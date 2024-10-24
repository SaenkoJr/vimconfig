(local uu (require :dotfiles.utils))

(uu.set-var :g :ctrlsf_ackprg         :rg)
(uu.set-var :g :ctrlsf_ignore_dir     [:node_modules :log :tmp :storage])
(uu.set-var :g :ctrlsf_case_sensitive :smart)
(uu.set-var :g :ctrlsf_auto_focus     {:at :done})
(uu.set-var :g :ctrlsf_default_root   :project)
(uu.set-var :g :ctrlsf_search_mode    :async)