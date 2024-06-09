(local lualine (require :lualine))
(local custom_ayu_ligh (require :lualine.themes.ayu_light))
(local core (require :aniseed.core))
(local uu (require :dotfiles.utils))

(core.assoc-in custom_ayu_ligh [:normal :middle :bg] "#000000")

(fn buf-status []
  (if vim.bo.modified
      "unsaved"
      vim.bo.readonly
      "protected"
      ""))

(fn buf-status-color []
  (if vim.bo.modified
      {:fg "#000000"}
      vim.bo.readonly
      {:fg "#e65050"}
      {:fg "#5C6773"}))

(local custom-theme {:inactive {:a {:bg "#d3d3d3" :fg "#5C6773" :gui "bold"}
                                :b {:bg "#d3d3d3" :fg "#5C6773"}
                                :c {:bg "#f3f3f3" :fg "#5C6773"}}
                     :insert {:a {:bg "#86B300" :fg "#f3f3f3" :gui "bold"}
                              :b {:bg "#d3d3d3" :fg "#5C6773"}
                              :c {:bg "#86B300" :fg "#f3f3f3" :gui "bold"}}
                     :normal {:a {:bg "#59c2ff" :fg "#f3f3f3" :gui "bold"}
                              :b {:bg "#d3d3d3" :fg "#5C6773"}
                              :c {:bg "#f3f3f3" :fg "#828C99"}}
                     :replace {:a {:bg "#f07178" :fg "#f3f3f3" :gui "bold"}
                               :b {:bg "#d3d3d3" :fg "#5C6773"}
                               :c {:bg "#f07178" :fg "#f3f3f3" :gui "bold"}}
                     :visual {:a {:bg "#A37ACC" :fg "#f3f3f3" :gui "bold"}
                              :b {:bg "#d3d3d3" :fg "#5C6773"}
                              :c {:bg "#A37ACC" :fg "#f3f3f3" :gui "bold"}}})

(lualine.setup
  {:options {:theme custom-theme
             :section_separators ["" ""]
             :component_separators ""
             :disabled_filetypes []
             :always_divide_middle true
             :globalstatus true}
   :sections {:lualine_a [:mode]
              :lualine_b [:branch]
              :lualine_c [(uu.tx :filename {:color buf-status-color
                                            :path 4
                                            :newfile_status true
                                            :symbols {:modified "[+]"
                                                      :readonly "[READONLY]"
                                                      :unnamed "[No name]"
                                                      :newfile "[New]"}})]
              :lualine_x [:diff]
              :lualine_y [:encoding :fileformat :filetype]
              :lualine_z [:location]}
   :inactive_sections {:lualine_a [:filename]
                       :lualine_b []
                       :lualine_c [(uu.tx buf-status {:color {:bg "#eeeeee"}
                                                      :path 4})]
                       :lualine_x [:filetype :location]
                       :lualine_y [nil]
                       :lualine_z []}
   :extensions [:nvim-tree :quickfix :fzf :fugitive :mason :trouble]})
