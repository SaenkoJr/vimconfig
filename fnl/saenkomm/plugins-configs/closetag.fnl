(module saenkomm.plugins.closetag
  {require {util saenkomm.util}})

(util.set-var :g :closetag_filenames "*.html,*.xhtml,*.phtml,*.erb")
(util.set-var :g :closetag_filetypes "html, xhtml, phtml, eruby, javascript, jsx, javascriptreact")
