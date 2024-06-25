(local dashboard (require :dashboard))

(dashboard.setup
  {:theme :hyper
   :week_header {:enable true}
   :disable_move false
   :change_to_vsc_root true
   :config {:header [""]
            :shortcut [{:desc "Git status"
                        :key :g
                        :group "@diff.plus"
                        :action :G}
                       {:desc :Ranger
                        :key :r
                        :group "@attribute"
                        :action :RnvimrToggle}
                       {:desc :Lazy
                        :key :l
                        :group "DiagnosticHint"
                        :action "Lazy check"}
                       {:desc :Mason
                        :key :m
                        :group "DiagnosticHint"
                        :action :Mason}
                       {:desc :Quit
                        :key :q
                        :group "DiagnosticError"
                        :action :q}]
            :project {:limit 5
                      :group "DiagnosticHint"}
            :mru {:limit 6}
            :footer [(vim.fn.repeat "-" 50)
                     (.. " " (. (vim.fn.systemlist "git rev-parse --abbrev-ref HEAD") 1))]}})
