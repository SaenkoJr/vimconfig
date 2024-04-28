-- [nfnl] Compiled from fnl/plugins/configs/bufferline.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugins.bufferline, {[require] = {[bufferline] = bufferline, [util] = saenkomm.util}})
return bufferline.setup({options = {mode = "tabs", numbers = "none", always_show_bufferline = false, show_buffer_close_icons = false, show_close_icon = false}})
