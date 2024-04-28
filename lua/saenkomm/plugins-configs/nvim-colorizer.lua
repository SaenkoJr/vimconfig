-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/nvim-colorizer.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm["nvim-colorizer"], {[require] = {[colorizer] = colorizer}})
return colorizer.setup({"css", "sass", "scss", "html", "slim"})
