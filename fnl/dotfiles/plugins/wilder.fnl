(module dotfiles.plugins.wilder
  {require {wilder wilder
            utils dotfiles.util}})

(utils.nvim-set [:nowildmenu])

(wilder.setup
  {:modes [":"]
   :use_cmdlinechanged 1
   :previous_key "<c-k>"
   :next_key "<c-j>"
   :accept_key "<c-y>"})

(wilder.set_option
  :pipeline
  [(wilder.branch
     (wilder.python_file_finder_pipeline {:file_command [:rg "--files"]
                                          :dir_command [:fd "-td"]
                                          :filters [:fuzzy_filter :difflib_sorter]})
     (wilder.cmdline_pipeline {:language :python
                               :fuzzy 0})
     (wilder.python_search_pipeline {:pattern (wilder.python_fuzzy_pattern)}))])

(wilder.set_option
  :renderer
  (wilder.popupmenu_renderer
    (wilder.popupmenu_border_theme {:highlights {:border :Normal}
                                    :border :rounded
                                    :max_height "40%"})))

