" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["asyncrun.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/asyncrun.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["bclose.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/bclose.vim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/clever-f.vim"
  },
  ["completion-buffers"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/completion-buffers"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["completion-treesitter"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/completion-treesitter"
  },
  ["ctrlsf.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/ctrlsf.vim"
  },
  ["easybuffer.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/easybuffer.vim"
  },
  fzf = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["homecolors.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/homecolors.vim"
  },
  indentLine = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  minimal = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/minimal"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-treesitter"] = {
    commands = { "TSUpdate all" },
    loaded = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["obvious-resize"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/obvious-resize"
  },
  ["packer.nvim"] = {
    loaded = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["paper.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/paper.vim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/papercolor-theme"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/popfix"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["ranger.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/ranger.vim"
  },
  ["sort-hvid.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/sort-hvid.vim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/splitjoin.vim"
  },
  ["startuptime.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/startuptime.vim"
  },
  ["tagalong.vim"] = {
    loaded = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/tagalong.vim"
  },
  ["targets.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["tmuxline.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/tmuxline.vim"
  },
  ["typewriter-vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/typewriter-vim"
  },
  undotree = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-better-whitespace"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-better-whitespace"
  },
  ["vim-bufonly"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-bufonly"
  },
  ["vim-closetag"] = {
    loaded = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/vim-closetag"
  },
  ["vim-colors-pap"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-colors-pap"
  },
  ["vim-colors-sketching"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-colors-sketching"
  },
  ["vim-colortemplate"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-colortemplate"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-endwise"] = {
    loaded = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/vim-endwise"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-jdaddy"] = {
    loaded = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/vim-jdaddy"
  },
  ["vim-lastplace"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-lastplace"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-move"
  },
  ["vim-ragtag"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-ragtag"
  },
  ["vim-rails"] = {
    loaded = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-speeddating"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-speeddating"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-textobj-comment"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-textobj-comment"
  },
  ["vim-textobj-function"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-textobj-function"
  },
  ["vim-textobj-indent"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-textobj-indent"
  },
  ["vim-textobj-rubyblock"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-textobj-rubyblock"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vim-yin-yang"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-yin-yang"
  }
}


-- Command lazy-loads
vim.cmd [[command! -nargs=* -range -bang -complete=file TSUpdate all lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSUpdate all", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
vim.cmd [[au FileType eruby ++once lua require("packer.load")({'vim-closetag', 'tagalong.vim', 'vim-rails', 'vim-endwise'}, { ft = "eruby" }, _G.packer_plugins)]]
vim.cmd [[au FileType haml ++once lua require("packer.load")({'vim-rails', 'vim-endwise'}, { ft = "haml" }, _G.packer_plugins)]]
vim.cmd [[au FileType coffee ++once lua require("packer.load")({'vim-rails'}, { ft = "coffee" }, _G.packer_plugins)]]
vim.cmd [[au FileType ruby ++once lua require("packer.load")({'vim-closetag', 'tagalong.vim', 'vim-rails', 'vim-endwise'}, { ft = "ruby" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'vim-jdaddy'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-rails'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'vim-closetag', 'tagalong.vim'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType slim ++once lua require("packer.load")({'vim-rails', 'vim-endwise'}, { ft = "slim" }, _G.packer_plugins)]]
vim.cmd("augroup END")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
