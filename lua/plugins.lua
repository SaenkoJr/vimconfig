local execute = vim.api.nvim_command
local fn, cmd = vim.fn, vim.cmd

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  execute 'packadd packer.nvim'
end

cmd [[ packadd packer.nvim ]]

-- cmd [[ autocmd BufWritePost plugins.lua lua reload() ]]
cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]

return require('packer').startup(
{
  function(use)
    -- packer can manage itself as an optional plugin
    use { "wbthomason/packer.nvim", opt = true }

    -- lsp
    -- use { 'hrsh7th/nvim-compe' }
    -- use { 'mattn/vim-lsp-settings' }
    use { 'RishabhRD/nvim-lsputils', requires = {{ 'RishabhRD/popfix' }} }
    use { 'glepnir/lspsaga.nvim' }
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' }
    use { 'steelsojka/completion-buffers' }
    use { 'nvim-treesitter/nvim-treesitter', cmd = 'TSUpdate all' }
    use { 'nvim-treesitter/completion-treesitter' }
    use { 'tsuyoshicho/vim-efm-langserver-settings' }

    -- telescope
    use {
      'nvim-telescope/telescope.nvim',
      requires = {
        { 'nvim-lua/popup.nvim' },
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-fzy-native.nvim' },
      }
    }

    -- FZF
    use { 'junegunn/fzf', run = './install --bin' }
    use { 'junegunn/fzf.vim' }
    use { 'dyng/ctrlsf.vim' }

    --  utils
    use { 'tweekmonster/startuptime.vim' }
    use { 'AndrewRadev/splitjoin.vim' }
    use { 'RRethy/vim-illuminate' } -- highlights
    use { 'Shougo/echodoc.vim' }
    use { 'Yggdroot/indentLine' }
    use { 'airblade/vim-rooter' }
    use { 'easymotion/vim-easymotion' }
    use { 'farmergreg/vim-lastplace' }
    use { 'francoiscabrol/ranger.vim' } -- file manager
    use { 'junegunn/limelight.vim' } -- highlight blocks
    use { 'junegunn/vim-easy-align' }
    use { 'glts/vim-textobj-comment' } -- dac dic yic cic
    use { 'kana/vim-textobj-function' }
    use { 'kana/vim-textobj-indent' }  -- dii cai
    use { 'kana/vim-textobj-user' }
    use { 'nelstrom/vim-textobj-rubyblock' }
    use { 'matze/vim-move' }
    use { 'mhinz/vim-startify' }
    use { 'ntpeters/vim-better-whitespace' }
    use { 'preservim/nerdcommenter' }
    use { 'rbgrouleff/bclose.vim' }
    use { 'rhysd/clever-f.vim' }
    use { 'schickling/vim-bufonly' }
    use { 'skywind3000/asyncrun.vim' }
    use { 'talek/obvious-resize' }
    use { 'tpope/vim-dispatch' }
    use { 'tpope/vim-eunuch' }          -- shell commands
    use { 'tpope/vim-ragtag' }
    use { 'tpope/vim-repeat' }
    use { 'tpope/vim-speeddating' }
    use { 'tpope/vim-surround' }
    use { 'tpope/vim-unimpaired' }
    use { 'tpope/vim-jdaddy', ft = { 'json' } }  -- for json
    use { 'troydm/easybuffer.vim' }
    use { 'voldikss/vim-floaterm' }
    use { 'wellle/targets.vim' }
    use { 'mbbill/undotree' }
    use { 'szw/vim-maximizer' }

    -- html
    use { 'alvan/vim-closetag', ft = { 'ruby', 'eruby', 'html' } } -- auto close tags
    use { 'AndrewRadev/tagalong.vim', ft = { 'ruby', 'eruby', 'html' } } -- auto change html tags

    -- airline
    use { 'edkolev/tmuxline.vim' }
    use { 'vim-airline/vim-airline' }
    use { 'vim-airline/vim-airline-themes' }

    -- git
    use { 'tpope/vim-fugitive' }
    use { 'airblade/vim-gitgutter' }

    -- ruby
    use { 'tpope/vim-rails', ft = { 'ruby', 'eruby', 'slim', 'haml', 'coffee', 'javascript' } }
    use { 'tpope/vim-endwise', ft = { 'ruby', 'haml', 'eruby', 'slim' } }

    -- colors
    use { 'NLKNguyen/papercolor-theme' }
    use { 'YorickPeterse/vim-paper' }
  end,
  config = {
    display = {
      open_fn = require 'packer.util'.float
    }
  }
}
)
