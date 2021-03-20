local execute = vim.api.nvim_command
local fn, cmd = vim.fn, vim.cmd

local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

cmd [[ packadd packer.nvim ]]

-- cmd [[ autocmd BufWritePost plugins.lua lua reload_config() ]]
-- cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]

-- cmd [[ autocmd BufWritePost **/nvim/lua/plugins/*.lua lua reload_config() ]]
-- cmd [[ autocmd BufWritePost **/nvim/lua/plugins/*.lua PackerCompile ]]

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

    -- fzf
    use { 'junegunn/fzf', run = './install --bin' }
    use { 'junegunn/fzf.vim' }
    use { 'dyng/ctrlsf.vim' }

    --  utils
    -- use { 'Shougo/echodoc.vim' }
    use { 'AndrewRadev/splitjoin.vim' }
    use { 'RRethy/vim-hexokinase', run = 'make hexokinase' } -- display colours
    use { 'RRethy/vim-illuminate' } -- highlights
    use { 'Yggdroot/indentLine' }
    use { 'airblade/vim-rooter' }
    use { 'easymotion/vim-easymotion' }
    use { 'farmergreg/vim-lastplace' }
    use { 'francoiscabrol/ranger.vim' } -- file manager
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
    use { 'rhysd/clever-f.vim' }
    use { 'schickling/vim-bufonly' }
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
    use { 'troydm/easybuffer.vim' }
    use { 'voldikss/vim-floaterm' }
    use { 'wellle/targets.vim' }
    use { 'janko-m/vim-test' }

    -- airline
    use { 'edkolev/tmuxline.vim' }
    use { 'vim-airline/vim-airline' }
    use { 'vim-airline/vim-airline-themes' }

    -- git
    use { 'tpope/vim-fugitive' }
    use { 'airblade/vim-gitgutter' }

    -- html
    use { 'AndrewRadev/tagalong.vim' } -- auto change html tags
    use { 'alvan/vim-closetag' }

    -- ruby
    use { 'tpope/vim-rails', ft = { 'ruby', 'eruby', 'slim', 'haml', 'coffee', 'javascript' } }
    use { 'tpope/vim-endwise', ft = { 'ruby', 'haml', 'eruby', 'slim' } }

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
  end,
  config = {
    display = {
      open_fn = require 'packer.util'.float
    }
  }
}
)
