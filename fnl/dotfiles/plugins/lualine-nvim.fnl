(module dotfiles.plugins.lualine-nvim
  {require {lualine lualine
            custom_ayu_ligh lualine.themes.ayu_light
            core aniseed.core}})

(defn buf-status []
  (if vim.bo.modified
      "unsaved"
      vim.bo.readonly
      "protected"
      ""))

(lualine.setup
  {:options {:theme :ayu_light
             :padding 1
             :section_separators ["" ""]
             :component_separators ""
             :disabled_filetypes []

             :globalstatus true}
   :sections {:lualine_a [:mode]
              :lualine_b [:branch]
              :lualine_c [{1 :filename
                           :file_status false}
                          {1 buf-status
                           :color {:bg "#fcc930"}}]
              :lualine_x [:diff]
              :lualine_y [:encoding :fileformat :filetype]
              :lualine_z [:location]}
   :inactive_sections {:lualine_a [:filename]
                       :lualine_b []
                       :lualine_c [{1 buf-status
                                    :color {:bg "#eeeeee"}}]
                       :lualine_x [:filetype :location]
                       :lualine_y []
                       :lualine_z []}
   :extensions [:nvim-tree :quickfix :fzf :fugitive]})
