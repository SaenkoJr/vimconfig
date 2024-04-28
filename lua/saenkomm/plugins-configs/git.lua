-- [nfnl] Compiled from fnl/saenkomm/plugins-configs/git.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.plugin.git, {[require] = {[util] = saenkomm.util, gitblame = gitblame}})
gitblame.setup({message_template = "    - <author> \226\128\162 <date> \226\128\162 <sha> \226\128\162 <summary>", date_format = "%d %B %Y", enabled = false})
util.noremap("n", "<leader>gs", ":G<cr>")
util.noremap("n", "<leader>gb", ":GitBlameToggle<cr>")
util.noremap("n", "<leader>GB", ":Git blame<cr>")
util.noremap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>")
return util.noremap("n", "<leader>GC", "<cmd>Telescope git_bcommits<cr>")
