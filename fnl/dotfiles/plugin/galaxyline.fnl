(module dotfiles.plugin.galaxyline
  {require {util dotfiles.util
            nvim aniseed.nvim
            core aniseed.core
            gl galaxyline
            fileinfo galaxyline.provider_fileinfo
            vcs galaxyline.provider_vcs
            condition galaxyline.condition}})

(set gl.short_line_list ["LuaTree" "packager" "Floaterm"])

(def colors
  {:bg "#f2f2f2"
   :fg "#81A1C1"
   :line-bg "#f2f2f2"
   :lbg "NONE"
   :fg-green "#8FBCBB"
   :yellow "#EBCB8B"
   :cyan "#A3BE8C"
   :darkblue "#81A1C1"
   :green "#8FBCBB"
   :orange "#D08770"
   :purple "#B48EAD"
   :magenta "#BF616A"
   :gray "#616E88"
   :blue "#5E81AC"
   :red "#BF616A"})

(def mode-color
  {:n colors.magenta
   :i colors.green
   :v colors.blue
   "" colors.blue
   :V colors.blue
   :c colors.red
   :no colors.magenta
   :s colors.orange
   :S colors.orange
   "" colors.orange
   :ic colors.yellow
   :R colors.purple
   :Rv colors.purple
   :cv colors.red
   :ce colors.red
   :r colors.cyan
   :rm colors.cyan
   "r?" colors.cyan
   "!" colors.red
   :t colors.red})

(def mode-name
  {:n "NORMAL"
   :c "COMMAND"
   :V "VISUAL"
   :v "VISUAL"
   "" "VISUAL"
   :R "REPLACE"
   :t "TERMINAL"
   :i "INSERT"
   :s "INSERT"
   :S "INSERT"
   "" "INSERT"})

(defn set-config [side config]
  (core.assoc-in gl [:section side] config))

(set-config :left [{:FirstElement {:provider (fn [] "  ")
                                   :highlight [colors.blue colors.lbg]}}
                   {:ViMode {:provider (fn []
                                         (vim.cmd (.. "hi GalaxyViMode guifg=" (. mode-color (vim.fn.mode))))
                                         (.. " " (. mode-name (vim.fn.mode)) " "))
                             :highlight [nil colors.lbg :bold]}}
                   {:FileIcon {:provider :FileIcon
                               :condition condition.buffer_not_empty
                               :highlight [fileinfo.get_file_icon_color colors.lbg]}}
                   {:FileName {:provider (fn [] (let [file (vim.fn.expand "%:p:.")
                                                      lock-icon " "]
                                                  (if nvim.bo.readonly (.. file lock-icon) file)))
                               :condition condition.buffer_not_empty
                               :separator " "
                               :separator_highlight [colors.purple colors.lbg]
                               :highlight [colors.purple colors.lbg :bold]}}
                   {:SavedFile {:provider (fn [] (if nvim.bo.modified " unsaved "))
                                :separator " "
                                :highlight [colors.gray colors.yellow]}}])

(set-config :short_line_left [{:FirstElement {:provider (fn [] (if nvim.bo.modified " "))}}
                              {:BufferType {:provider :FileIcon
                                            :separator " "
                                            :highlight [colors.blue colors.lbg :bold]
                                            :separator_highlight [nil colors.lbg]}}
                              {:SFileName {:provider (fn [] (vim.fn.expand "%:p:."))
                                           :separator " "}}
                              {:SFileNameIcon {:provider (fn [] (if nvim.bo.modified " unsaved "))
                                               :separator " "
                                               :highlight [colors.gray colors.yellow]}}])

; --------------------- Right section ------------------------
(set-config :right [{:FileTypeName {:provider (fn [] nvim.bo.filetype)
                                    :separator " "
                                    :highlight [colors.orange colors.lbg :bold]}}
                    {:GitBranch {:provider :GitBranch
                                 :icon " "
                                 :separator " "
                                 :condition vcs.check_git_workspace
                                 :highlight [colors.orange colors.lbg :bold]
                                 :separator_highlight [colors.purple colors.lbg]}}
                    {:FileEncode {:provider (fn [] (.. " " vim.bo.fenc))
                                  :separator " "
                                  :condition condition.buffer_not_empty}}
                    {:FileFormat {:provider (fn [] vim.bo.fileformat)
                                  :separator " "
                                  :condition condition.buffer_not_empty}}
                    {:LineInfo {:provider :LineColumn
                                :separator " "
                                :separator_highlight [colors.blue colors.lbg]
                                :highlight [colors.gray colors.lbg]}}
                    {:DiagnosticError {:provider :DiagnosticError
                                       :separator " "
                                       :icon "🗴 "
                                       :highlight [colors.red colors.lbg]
                                       :separator_highlight [colors.bg colors.lbg]}}
                    {:DiagnosticWarn {:provider :DiagnosticWarn
                                      :icon " "
                                      :highlight [colors.yellow colors.lbg]
                                      :separator_highlight [colors.bg colors.lbg]}}
                    {:DiagnosticInfo {:provider :DiagnosticInfo
                                      :icon " "
                                      :highlight [colors.green colors.lbg]
                                      :separator_highlight [colors.bg colors.lbg]}}
                    {:DiagnosticHint {:provider :DiagnosticHint
                                      :icon " "
                                      :highlight [colors.blue colors.lbg]
                                      :separator_highlight [colors.bg colors.lbg]}}])

(set-config :short_line_right {:BufferIcon {:provider :BufferIcon
                                            :highlight [colors.fg colors.lbg]}})
