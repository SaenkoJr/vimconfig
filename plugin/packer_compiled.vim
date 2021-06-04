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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/maksim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  aniseed = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/aniseed"
  },
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
  ["compe-conjure"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/compe-conjure"
  },
  conjure = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/conjure"
  },
  ["ctrlsf.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/ctrlsf.vim"
  },
  ["easybuffer.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/easybuffer.vim"
  },
  ["echodoc.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/echodoc.vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  fzf = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
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
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
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
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lsputils"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nvim-lsputils"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    commands = { "TSUpdate all" },
    loaded = false,
    needs_bufread = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["obvious-resize"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/obvious-resize"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["paper.vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/paper.vim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/papercolor-theme"
  },
  ["parinfer-rust"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/parinfer-rust"
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
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/tagalong.vim"
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
  ["typewriter-vim"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/typewriter-vim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-bbye"
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
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-colors-pap"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-colors-pap"
  },
  ["vim-colors-sketching"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-colors-sketching"
  },
  ["vim-colors-solarized"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-colors-solarized"
  },
  ["vim-colortemplate"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-colortemplate"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-dotenv"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-dotenv"
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
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-endwise"
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
  ["vim-jdaddy"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/vim-jdaddy"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty"
  },
  ["vim-lastplace"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-lastplace"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-move"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-move"
  },
  ["vim-racket"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-racket"
  },
  ["vim-ragtag"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-ragtag"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-rails"
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
  ["vim-test"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-test"
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
  ["vim-two-firewatch"] = {
    loaded = true,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-two-firewatch"
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

time("Defining packer_plugins", false)

-- Command lazy-loads
time("Defining lazy-load commands", true)
vim.cmd [[command! -nargs=* -range -bang -complete=file TSUpdate all lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSUpdate all", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time("Defining lazy-load commands", false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time("Defining lazy-load filetype autocommands", true)
vim.cmd [[au FileType json ++once lua require("packer.load")({'vim-jdaddy'}, { ft = "json" }, _G.packer_plugins)]]
time("Defining lazy-load filetype autocommands", false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
