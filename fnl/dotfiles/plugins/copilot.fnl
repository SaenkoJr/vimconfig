(module dotfiles.plugins.copilot
  {require {copilot copilot
            copilot_cmp copilot_cmp}})

(copilot.setup
  {:suggestion {:enabled false}
   :panel {:enabled true}
   :cmp {:enabled true
         :method "getCompletionsCycling"}
   :filetypes {:yaml true}})

(copilot_cmp.setup
  {:method "getCompletionsCycling"})
  ; {:method "getPanelCompletions"})
