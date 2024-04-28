-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/closetag.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.closetag, {[require] = {[util] = saenkomm.util}})
util["set-var"]("g", "closetag_filenames", "*.html,*.xhtml,*.phtml,*.erb")
return util["set-var"]("g", "closetag_filetypes", "html, xhtml, phtml, eruby, javascript, jsx, javascriptreact")
