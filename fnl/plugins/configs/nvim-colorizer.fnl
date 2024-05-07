(local colorizer (require :colorizer))

(colorizer.setup
  {:filetypes ["*"]
   :user_default_options {:tailwind true
                          :sass {:enable true}}})
