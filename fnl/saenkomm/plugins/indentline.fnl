(module saenkomm.plugins.indentline
  {require {util saenkomm.util
            : ibl
            core aniseed.core}})

(util.set-var :g :vim_json_syntax_conceal 0)
(util.set-var :g :vim_json_syntax_conceal 0)

(tset vim.opt :list true)

(ibl.setup
  {:exclude {:filetypes [:fennel :javascript]}})
