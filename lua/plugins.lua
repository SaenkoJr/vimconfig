local execute = vim.api.nvim_command
local fn, cmd = vim.fn, vim.cmd

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

cmd [[ packadd packer.nvim ]]

-- cmd [[ autocmd BufWritePost plugins.lua lua reload_config() ]]
-- cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]

return require('packer').startup(
{
  function(use)
    use { 'wbthomason/packer.nvim', opt = true }

    -- lsp
    use { 'RishabhRD/nvim-lsputils', requires = {{ 'RishabhRD/popfix' }} }
    use { 'glepnir/lspsaga.nvim' }
    use { 'hrsh7th/vim-vsnip', requires = 'hrsh7th/vim-vsnip-integ' }
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate all' }

    -- completion
    use { 'hrsh7th/nvim-compe' }
    use { 'nvim-lua/completion-nvim' }
    use { 'nvim-treesitter/completion-treesitter' }
    use { 'steelsojka/completion-buffers' }

    -- telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        { 'nvim-lua/popup.nvim' },
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-fzy-native.nvim' },
      }
    }

    -- file managment
    use { 'junegunn/fzf', run = './install --bin' }
    use { 'junegunn/fzf.vim' }
    use { 'dyng/ctrlsf.vim' }
    use { 'kyazdani42/nvim-web-devicons' }
    use { 'kyazdani42/nvim-tree.lua' }
    use { 'francoiscabrol/ranger.vim' }

    --  utils
    -- use { 'Shougo/echodoc.vim' }
    use { 'AndrewRadev/splitjoin.vim' }
    use { 'RRethy/vim-hexokinase', run = 'make hexokinase' } -- display colours
    -- use { 'RRethy/vim-illuminate' } -- highlights
    use { 'Yggdroot/indentLine' }
    use { 'airblade/vim-rooter' }
    use { 'easymotion/vim-easymotion' }
    use { 'farmergreg/vim-lastplace' }
    use { 'glts/vim-textobj-comment' } -- dac dic yic cic
    use { 'jiangmiao/auto-pairs' }
    use { 'junegunn/limelight.vim' } -- highlight blocks
    use { 'junegunn/vim-easy-align' }
    use { 'kana/vim-textobj-function' }
    use { 'kana/vim-textobj-indent' }  -- dii cai
    use { 'kana/vim-textobj-user' }
    use { 'matze/vim-move' }
    use { 'mbbill/undotree' }
    use { 'mhinz/vim-startify' }
    use { 'nelstrom/vim-textobj-rubyblock' }
    use { 'ntpeters/vim-better-whitespace' }
    use { 'preservim/nerdcommenter' }
    use { 'rbgrouleff/bclose.vim' }
    use { 'moll/vim-bbye' }
    use { 'rhysd/clever-f.vim' }
    use { 'skywind3000/asyncrun.vim' }
    use { 'szw/vim-maximizer' }
    use { 'talek/obvious-resize' }
    use { 'tpope/vim-dispatch' }
    use { 'tpope/vim-eunuch' }          -- shell commands
    use { 'tpope/vim-jdaddy', ft = { 'json' } }
    use { 'tpope/vim-ragtag' }
    use { 'tpope/vim-repeat' }
    use { 'tpope/vim-speeddating' }
    use { 'tpope/vim-surround' }
    use { 'tpope/vim-unimpaired' }
    use { 'schickling/vim-bufonly' }
    use { 'troydm/easybuffer.vim' }
    use { 'voldikss/vim-floaterm' }
    use { 'wellle/targets.vim' }
    use { 'janko-m/vim-test' }
    use { 'mattn/emmet-vim' }
    use { 'andymass/vim-matchup' }

    -- statusline
    use { 'edkolev/tmuxline.vim' }
    use { 'vim-airline/vim-airline', disable = true }
    use { 'vim-airline/vim-airline-themes' }
    use {
      'glepnir/galaxyline.nvim',
      branch = 'main',
      config = function() require('settings.plugins.galaxyline') end,
    }

    use { 'jpalardy/vim-slime' }

    -- git
    use { 'tpope/vim-fugitive' }
    use { 'airblade/vim-gitgutter' }

    -- html
    use { 'AndrewRadev/tagalong.vim' } -- auto change html tags
    use { 'alvan/vim-closetag' }

    -- ruby
    use { 'tpope/vim-rails' }
    use { 'tpope/vim-endwise' }

    -- js
    use { 'maxmellon/vim-jsx-pretty' }

    -- markdown
    use {
      'iamcco/markdown-preview.nvim',
      run = 'cd app && yarn install',
      config = require('settings.plugins.markdown')
    }

    -- debug
    use { 'tweekmonster/startuptime.vim' }

    -- colors
    use { 'NLKNguyen/papercolor-theme' }
    use { 'arcticicestudio/nord-vim' }
    use { 'ayu-theme/ayu-vim' }
    use { 'casperstorm/sort-hvid.vim' }
    use { 'equt/paper.vim' }
    use { 'lifepillar/vim-colortemplate' }
    use { 'logico/typewriter-vim' }
    use { 'mikker/vim-colors-pap' }
    use { 'pgdouyon/vim-yin-yang' }
    use { 'rflban/homecolors.vim' }
    use { 'thenewvu/vim-colors-sketching' }
    use { 'wolverian/minimal' }
    use { 'altercation/vim-colors-solarized', config = require('settings.plugins.solarized') }
  end,
  config = {
    display = {
      open_fn = require 'packer.util'.float
    }
  }
}
)
