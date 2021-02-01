" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif
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

_G.packer_plugins = {
  ["asyncrun.vim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/asyncrun.vim"
  },
  ["bclose.vim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/bclose.vim"
  },
  ["clever-f.vim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/clever-f.vim"
  },
  ["completion-nvim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["easybuffer.vim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/easybuffer.vim"
  },
  ["echodoc.vim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/echodoc.vim"
  },
  indentLine = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["limelight.vim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  nerdcommenter = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    commands = { "TSUpdate all" },
    loaded = false,
    only_sequence = false,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["obvious-resize"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/obvious-resize"
  },
  ["packer.nvim"] = {
    loaded = false,
    only_sequence = false,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["papercolor-theme"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/papercolor-theme"
  },
  ["ranger.vim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/ranger.vim"
  },
  ["splitjoin.vim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/splitjoin.vim"
  },
  ["targets.vim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/targets.vim"
  },
  ["tmuxline.vim"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/tmuxline.vim"
  },
  undotree = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-airline"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-better-whitespace"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-better-whitespace"
  },
  ["vim-bufonly"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-bufonly"
  },
  ["vim-dispatch"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-easy-align"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-easymotion"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-endwise"] = {
    loaded = false,
    only_sequence = false,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/vim-endwise"
  },
  ["vim-eunuch"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-floaterm"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-illuminate"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-illuminate"
  },
  ["vim-jdaddy"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-jdaddy"
  },
  ["vim-lastplace"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-lastplace"
  },
  ["vim-move"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-move"
  },
  ["vim-ragtag"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-ragtag"
  },
  ["vim-rails"] = {
    loaded = false,
    only_sequence = false,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/opt/vim-rails"
  },
  ["vim-repeat"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-rooter"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-speeddating"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-speeddating"
  },
  ["vim-startify"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-textobj-comment"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-textobj-comment"
  },
  ["vim-textobj-function"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-textobj-function"
  },
  ["vim-textobj-indent"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-textobj-indent"
  },
  ["vim-textobj-rubyblock"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-textobj-rubyblock"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-textobj-user"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    only_sequence = true,
    only_setup = false,
    path = "/home/maksim/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  }
}

local function handle_bufread(names)
  for _, name in ipairs(names) do
    local path = packer_plugins[name].path
    for _, dir in ipairs({ 'ftdetect', 'ftplugin', 'after/ftdetect', 'after/ftplugin' }) do
      if #vim.fn.finddir(dir, path) > 0 then
        vim.cmd('doautocmd BufRead')
        return
      end
    end
  end
end

local packer_load = nil
local function handle_after(name, before)
  local plugin = packer_plugins[name]
  plugin.load_after[before] = nil
  if next(plugin.load_after) == nil then
    packer_load({name}, {})
  end
end

packer_load = function(names, cause)
  local some_unloaded = false
  for _, name in ipairs(names) do
    if not packer_plugins[name].loaded then
      some_unloaded = true
      break
    end
  end

  if not some_unloaded then return end

  local fmt = string.format
  local del_cmds = {}
  local del_maps = {}
  for _, name in ipairs(names) do
    if packer_plugins[name].commands then
      for _, cmd in ipairs(packer_plugins[name].commands) do
        del_cmds[cmd] = true
      end
    end

    if packer_plugins[name].keys then
      for _, key in ipairs(packer_plugins[name].keys) do
        del_maps[key] = true
      end
    end
  end

  for cmd, _ in pairs(del_cmds) do
    vim.cmd('silent! delcommand ' .. cmd)
  end

  for key, _ in pairs(del_maps) do
    vim.cmd(fmt('silent! %sunmap %s', key[1], key[2]))
  end

  for _, name in ipairs(names) do
    if not packer_plugins[name].loaded then
      vim.cmd('packadd ' .. name)
      if packer_plugins[name].config then
        for _i, config_line in ipairs(packer_plugins[name].config) do
          loadstring(config_line)()
        end
      end

      if packer_plugins[name].after then
        for _, after_name in ipairs(packer_plugins[name].after) do
          handle_after(after_name, name)
          vim.cmd('redraw')
        end
      end

      packer_plugins[name].loaded = true
    end
  end

  handle_bufread(names)

  if cause.cmd then
    local lines = cause.l1 == cause.l2 and '' or (cause.l1 .. ',' .. cause.l2)
    vim.cmd(fmt('%s%s%s %s', lines, cause.cmd, cause.bang, cause.args))
  elseif cause.keys then
    local keys = cause.keys
    local extra = ''
    while true do
      local c = vim.fn.getchar(0)
      if c == 0 then break end
      extra = extra .. vim.fn.nr2char(c)
    end

    if cause.prefix then
      local prefix = vim.v.count ~= 0 and vim.v.count or ''
      prefix = prefix .. '"' .. vim.v.register .. cause.prefix
      if vim.fn.mode('full') == 'no' then
        if vim.v.operator == 'c' then
          prefix = '' .. prefix
        end

        prefix = prefix .. vim.v.operator
      end

      vim.fn.feedkeys(prefix, 'n')
    end

    local escaped_keys = vim.api.nvim_replace_termcodes(cause.keys .. extra, true, true, true)
    vim.api.nvim_feedkeys(escaped_keys, 'm', true)
  elseif cause.event then
    vim.cmd(fmt('doautocmd <nomodeline> %s', cause.event))
  elseif cause.ft then
    vim.cmd(fmt('doautocmd <nomodeline> %s FileType %s', 'filetypeplugin', cause.ft))
    vim.cmd(fmt('doautocmd <nomodeline> %s FileType %s', 'filetypeindent', cause.ft))
  end
end

_packer_load_wrapper = function(names, cause)
  success, err_msg = pcall(packer_load, names, cause)
  if not success then
    vim.cmd('echohl ErrorMsg')
    vim.cmd('echomsg "Error in packer_compiled: ' .. vim.fn.escape(err_msg, '"') .. '"')
    vim.cmd('echomsg "Please check your config for correctness"')
    vim.cmd('echohl None')
  end
end

-- Runtimepath customization

-- Pre-load configuration
-- Post-load configuration
-- Conditional loads
-- Load plugins in order defined by `after`
END

function! s:load(names, cause) abort
  call luaeval('_packer_load_wrapper(_A[1], _A[2])', [a:names, a:cause])
endfunction


" Command lazy-loads
command! -nargs=* -range -bang -complete=file TSUpdate all call s:load(['nvim-treesitter'], { "cmd": "TSUpdate all", "l1": <line1>, "l2": <line2>, "bang": <q-bang>, "args": <q-args> })

" Keymap lazy-loads

augroup packer_load_aucmds
  au!
  " Filetype lazy-loads
  au FileType haml ++once call s:load(['vim-rails', 'vim-endwise'], { "ft": "haml" })
  au FileType coffee ++once call s:load(['vim-rails'], { "ft": "coffee" })
  au FileType javascript ++once call s:load(['vim-rails'], { "ft": "javascript" })
  au FileType ruby ++once call s:load(['vim-rails', 'vim-endwise'], { "ft": "ruby" })
  au FileType eruby ++once call s:load(['vim-rails', 'vim-endwise'], { "ft": "eruby" })
  au FileType slim ++once call s:load(['vim-rails', 'vim-endwise'], { "ft": "slim" })
  " Event lazy-loads
  " Function lazy-loads
augroup END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
