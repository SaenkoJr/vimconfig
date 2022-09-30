(module dotfiles.plugins.ctrlsf
  {require {util dotfiles.util}})

(util.set-var :g :ctrlsf_ackprg         :rg)
(util.set-var :g :ctrlsf_ignore_dir     [:node_modules :log :tmp :storage])
(util.set-var :g :ctrlsf_case_sensitive :smart)
(util.set-var :g :ctrlsf_auto_focus     {:at :done})
(util.set-var :g :ctrlsf_default_root   :project)
(util.set-var :g :ctrlsf_search_mode    :async)
