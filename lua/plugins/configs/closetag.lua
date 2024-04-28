-- [nfnl] Compiled from fnl/plugins/configs/closetag.fnl by https://github.com/Olical/nfnl, do not edit.
local util = require("dotfiles.utils")
util["set-var"]("g", "closetag_filenames", "*.html,*.xhtml,*.phtml,*.erb")
return util["set-var"]("g", "closetag_filetypes", "html, xhtml, phtml, eruby, javascript, jsx, javascriptreact")
