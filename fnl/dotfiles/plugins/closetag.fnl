(module dotfiles.plugins.closetag
  {require {util dotfiles.util}})

(util.set-var :g :closetag_filenames "*.html,*.xhtml,*.phtml,*.erb")
(util.set-var :g :closetag_filetypes "html, xhtml, phtml, eruby, javascript, jsx, javascriptreact")
