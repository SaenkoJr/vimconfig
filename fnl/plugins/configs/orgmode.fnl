(local util (require :dotfiles.utils))
(local orgmode (require :orgmode))

(orgmode.setup
  {:org_agenda_files       ["~/Dropbox/org/*" "~/Documents/orgs/**/*"]
   :org_default_notes_file "~/Documents/orgs/notes.org"
   :org_todo_keywords [:TODO :NEXT :WAITING :| :DONE :DELEGATED]
   :org_agenda_templates {:t {:description "Task"
                              :template "* TODO %?\n  %T"
                              :target "~/Documents/orgs/todos.org"}
                          :T {:description "Task with deadline"
                              :template "* TODO %?\n  DEADLINE: %T"
                              :target "~/Documents/orgs/todos.org"}
                          :w {:description "Work task"
                              :template "* TODO %?\n  DEADLINE: %T"
                              :target "~/Documents/orgs/work.org"}
                          :s {:description "Study task"
                              :template "* TODO %?\n  %T"
                              :target "~/Documents/orgs/study.org"}
                          :n {:description "Note"
                              :template "* NOTE %?\n  %T"}}
   :org_agenda_min_height 25
   :mappings {:prefix "<localleader>"
              :global {:org_agenda :<leader>oa
                       :org_capture :<leader>oc}}})

(util.noremap :n :<leader>ot ":e ~/Documents/orgs<cr>")
