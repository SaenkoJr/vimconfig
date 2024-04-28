(local copilot (require :copilot))
(local copilot_cmp (require :copilot_cmp))

(copilot.setup
  {:suggestion {:enabled false}
   :panel {:enabled true}
   :cmp {:enabled true
         :method "getCompletionsCycling"}
   :filetypes {:yaml true}})

(copilot_cmp.setup
  {:method "getCompletionsCycling"})
  ; {:method "getPanelCompletions"})
