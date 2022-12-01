(module dotfiles.lsp.utils
  {require {util dotfiles.util
            nvim aniseed.nvim
            cmplsp cmp_nvim_lsp}})

(defn- lsp_formating [bufnr]
  (vim.lsp.format {:filter (fn [client] (= client.name :null-ls))
                   :bufnr bufnr}))

(defn safe-require-server-config [name]
  (let [(ok? conf-or-err) (pcall require (.. "dotfiles.lsp.servers." name))]
    (if (not ok?)
      (print (.. "server config error: " conf-or-err))
      conf-or-err)))

(def capabilities
  (cmplsp.default_capabilities
    (vim.lsp.protocol.make_client_capabilities)))

(defn on-attach [client bufnr]
  (. (require :virtualtypes) :on_attach)
  ; (set nvim.b.omnifunc :lua.vim.lsp.omnifunc)

  (util.bnoremap bufnr :n :K ":Lspsaga hover_doc<cr>")
  ; (util.bnoremap bufnr :n :K "<cmd>lua vim.lsp.buf.hover()<cr>")
  (util.bnoremap bufnr :n :<leader>K "<cmd>lua vim.lsp.buf.signature_help()<cr>")

  ; (util.bnoremap bufnr :n :gd "<cmd>lua vim.lsp.buf.definition()<cr>")
  (util.bnoremap bufnr :n :gd "<cmd>Telescope lsp_definitions<cr>")

  (util.bnoremap bufnr :n :gr "<cmd>lua vim.lsp.buf.references()<cr>")

  ; (util.bnoremap bufnr :n :<leader>rn "<cmd>lua vim.lsp.buf.rename()<cr>")
  (util.bnoremap bufnr :n :<leader>rn ":Lspsaga rename<cr>")

  ; (util.bnoremap bufnr :n :<leader>ca "<cmd>lua vim.lsp.buf.code_action()<cr>")
  ; (util.bnoremap bufnr :v :<leader>ca "<cmd>lua vim.lsp.buf.range_code_action()<cr>")
  (util.bnoremap bufnr :n :<leader>ca ":Lspsaga code_action<cr>")
  (util.bnoremap bufnr :v :<leader>ca ":<C-U>Lspsaga range_code_action<cr>")

  (util.bnoremap bufnr :n :gi "<cmd>lua vim.lsp.buf.implementation()<cr>")
  (util.bnoremap bufnr :n :<leader>gt "<cmd>lua vim.lsp.buf.type_definition()<cr>")

  (util.bnoremap bufnr :n :<leader>fm "<cmd>lua vim.lsp.buf.format({ async = true })<cr>")

  (util.bnoremap bufnr :n :<leader>wa "<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>")
  (util.bnoremap bufnr :n :<leader>wr "<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>")

  (util.bnoremap bufnr :n :gp ":Lspsaga peek_definition<cr>")
  (util.noremap :n "]d" "<cmd>Lspsaga diagnostic_jump_next<cr>")
  (util.noremap :n "[d" "<cmd>Lspsaga diagnostic_jump_prev<cr>")
  ; (util.noremap :n "]d" "<cmd>lua vim.diagnostic.goto_next()<CR>")
  ; (util.noremap :n "[d" "<cmd>lua vim.diagnostic.goto_prev()<CR>")

  (print (.. "'" client.name "' server attached.")))
