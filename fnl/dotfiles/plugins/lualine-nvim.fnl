(module dotfiles.plugins.lualine-nvim
  {require {lualine lualine
            custom_ayu_ligh lualine.themes.ayu_light
            core aniseed.core}})

(lualine.setup
  {:options {:theme :ayu_light
             :padding 1
             :section_separators ["" ""]
             :component_separators ""
             :disabled_filetypes []}
   :sections {:lualine_a [:mode]
              :lualine_b [:branch]
              :lualine_c [:filename]
              :lualine_x [:diff]
              :lualine_y [:encoding :fileformat :filetype]
              :lualine_z [:location]}
   :inactive_sections {:lualine_a [:filename]
                       :lualine_b []
                       :lualine_c []
                       :lualine_x [:filetype :location]
                       :lualine_y []
                       :lualine_z []}
   :extensions [:nvim-tree :quickfix :fzf :fugitive]})
