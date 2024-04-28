(local util (require :dotfiles.utils))
(local ibl (require :ibl))

(util.set-var :g :vim_json_syntax_conceal 0)
(util.set-var :g :vim_json_syntax_conceal 0)

(tset vim.opt :list true)

(ibl.setup
  {:exclude {:filetypes [:fennel :javascript :startify]}})
