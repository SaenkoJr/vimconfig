(local harpoon (require :harpoon))
(local wk (require :which-key))

(harpoon:setup {:settings {:save_on_toggle true}})

(wk.register
  {:h {:a [(fn [] (: (harpoon:list) :add)) "Add to harpoon list"]
       :l [(fn [] (harpoon.ui:toggle_quick_menu (harpoon:list))) "Show harpoon list"]}}
  {:prefix :<leader>})

(vim.keymap.set :n :<a-k> (fn [] (: (harpoon:list) :prev)))
(vim.keymap.set :n :<a-j> (fn [] (: (harpoon:list) :next)))
