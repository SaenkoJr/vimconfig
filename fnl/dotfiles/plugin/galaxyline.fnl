(module dotfiles.plugin.galaxyline
  {require {util dotfiles.util
            nvim aniseed.nvim
            core aniseed.core
            gl galaxyline
            fileinfo galaxyline.provider_fileinfo
            vcs galaxyline.provider_vcs
            condition galaxyline.condition}})

(set gl.short_line_list ["LuaTree" "packager" "Floaterm"])

(def nord-colors {:bg "#f2f2f2"
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

(def mode-color {:n nord-colors.magenta
                 :i nord-colors.green
                 :v nord-colors.blue
                 "" nord-colors.blue
                 :V nord-colors.blue
                 :c nord-colors.red
                 :no nord-colors.magenta
                 :s nord-colors.orange
                 :S nord-colors.orange
                 "" nord-colors.orange
                 :ic nord-colors.yellow
                 :R nord-colors.purple
                 :Rv nord-colors.purple
                 :cv nord-colors.red
                 :ce nord-colors.red
                 :r nord-colors.cyan
                 :rm nord-colors.cyan
                 "r?" nord-colors.cyan
                 "!" nord-colors.red
                 :t nord-colors.red})

(def mode-name {:n "NORMAL"
                :i "INSERT"
                :c "COMMAND"
                :V "VISUAL"
                "" "VISUAL"
                :v "VISUAL"
                :R "REPLACE"
                :t "TERMINAL"
                :s "INSERT"
                :S "INSERT"
                "" "INSERT"})

(defn set-section [side pos config]
  (core.assoc-in gl [:section side pos] config))

(set-section :left 1 {:FirstElement
                      {:provider (fn [] "  ")
                       :highlight [nord-colors.blue nord-colors.line-bg]}})

(set-section :left 2 {:ViMode
                      {:provider (fn []
                                   (vim.cmd (.. "hi GalaxyViMode guifg=" (. mode-color (vim.fn.mode))))
                                   (.. " " (. mode-name (vim.fn.mode)) " "))
                       :highlight [nord-colors.red nord-colors.line-bg :bold]}})

(set-section :left 3 {:FileIcon
                      {:provider :FileIcon
                       :condition condition.buffer_not_empty
                       :highlight [fileinfo.get_file_icon_color nord-colors.line-bg]}})

(set-section :left 4 {:FileName
                      {:provider (fn []
                                   (let [file (vim.fn.expand "%:p:.")
                                         lock-icon " "]
                                     (if nvim.bo.readonly
                                       (.. file lock-icon)
                                       file)))
                       :condition condition.buffer_not_empty
                       :separator " "
                       :separator_highlight [nord-colors.purple nord-colors.bg]
                       :highlight [nord-colors.purple nord-colors.bg :bold]}})

(set-section :left 5 {:SavedFile
                      {:provider (fn []
                                   (if nvim.bo.modified
                                     " unsaved "))
                       :separator " "
                       :highlight [nord-colors.gray nord-colors.yellow]}})

(set-section :short_line_left 1 {:FirstElement
                                 {:provider (fn []
                                              (if nvim.bo.modified
                                                " "))}})

(set-section :short_line_left 2 {:BufferType
                                 {:provider :FileIcon
                                  :separator " "
                                  :highlight [nord-colors.blue nord-colors.lbg :bold]
                                  :separator_highlight [:NONE nord-colors.lbg]}})

(set-section :short_line_left 3 {:SFileName
                                 {:provider (fn [] (vim.fn.expand "%:p:."))
                                  :separator " "}})

(set-section :short_line_left 4 {:SFileNameIcon
                                 {:provider (fn []
                                              (if nvim.bo.modified
                                                " unsaved "))
                                  :separator " "
                                  :highlight [nord-colors.gray nord-colors.yellow]}})

; --------------------- Right section ------------------------
(set-section :right 1 {:FileTypeName
                       {:provider (fn [] nvim.bo.filetype)
                        :separator " "
                        :highlight [nord-colors.orange nord-colors.line-bg :bold]}})

(set-section :right 2 {:GitBranch
                       {:provider :GitBranch
                        :icon " "
                        :separator " "
                        :condition vcs.check_git_workspace
                        :highlight [nord-colors.orange nord-colors.line-bg :bold]
                        :separator_highlight [nord-colors.purple nord-colors.bg]}})

(set-section :right 3 {:FileEncode
                       {:provider (fn [] (.. " " vim.bo.fenc))
                        :separator " "
                        :condition condition.buffer_not_empty}})


(set-section :right 4 {:FileFormat
                       {:provider (fn [] vim.bo.fileformat)
                        :separator " "
                        :condition condition.buffer_not_empty}})

(set-section :right 5 {:LineInfo
                       {:provider :LineColumn
                        :separator " "
                        :separator_highlight [nord-colors.blue nord-colors.line-bg]
                        :highlight [nord-colors.gray nord-colors.line-bg]}})

(set-section :right 8 {:DiagnosticError
                       {:provider :DiagnosticError
                        :separator " "
                        :icon "🗴 "
                        :highlight [nord-colors.red nord-colors.line-bg]
                        :separator_highlight [nord-colors.bg nord-colors.bg]}})

(set-section :right 9 {:DiagnosticWarn
                       {:provider :DiagnosticWarn
                        :icon " "
                        :highlight [nord-colors.yellow nord-colors.line-bg]
                        :separator_highlight [nord-colors.bg nord-colors.bg]}})

(set-section :right 10 {:DiagnosticInfo
                        {:provider :DiagnosticInfo
                         :icon " "
                         :highlight [nord-colors.green nord_colors.line-bg]
                         :separator_highlight [nord-colors.bg nord-colors.bg]}})

(set-section :right 11 {:DiagnosticHint
                        {:provider :DiagnosticHint
                         :icon " "
                         :highlight [nord-colors.blue nord_colors.line-bg]
                         :separator_highlight [nord-colors.bg nord-colors.bg]}})

(set-section :short_line_right 1 {:BufferIcon
                                  {:provider :BufferIcon
                                   :highlight [nord-colors.fg nord_colors.lbg]}})
