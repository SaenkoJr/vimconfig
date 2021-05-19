--local exec = vim.api.nvim_exec

--exec ([[
  --autocmd BufWritePost init.lua PackerCompile
--]], false)

--vim.cmd([[ let g:aniseed#env = v:true ]])
----require('aniseed.env').init()

--return require('packer').startup(
--{
  --function(use)
    ---- use { 'wbthomason/packer.nvim', opt = true }
    --use { 'wbthomason/packer.nvim' }

    ---- lsp
    --use { 'RishabhRD/nvim-lsputils', requires = {{ 'RishabhRD/popfix' }} }
    --use { 'glepnir/lspsaga.nvim' }
    --use { 'hrsh7th/vim-vsnip', requires = 'hrsh7th/vim-vsnip-integ' }
    --use { 'neovim/nvim-lspconfig' }
    --use {
      --'nvim-treesitter/nvim-treesitter',
       --cmd = 'TSUpdate all',
    --}

    ---- completion
    --use { 'hrsh7th/nvim-compe' }
    ---- use { 'nvim-lua/completion-nvim' }
    ---- use { 'steelsojka/completion-buffers' }
    ---- use { 'nvim-treesitter/completion-treesitter' }

    ---- telescope
    --use {
      --'nvim-telescope/telescope.nvim',
      --requires = {
        --{ 'nvim-lua/popup.nvim' },
        --{ 'nvim-lua/plenary.nvim' },
        --{ 'nvim-telescope/telescope-fzy-native.nvim' },
      --}
    --}

    ---- file managment
    --use { 'junegunn/fzf', run = './install --bin' }
    --use { 'junegunn/fzf.vim' }
    --use { 'dyng/ctrlsf.vim' }
    --use { 'kyazdani42/nvim-web-devicons' }
    --use { 'kyazdani42/nvim-tree.lua' }
    --use { 'francoiscabrol/ranger.vim' }

    ----  utils
    ---- use { 'Shougo/echodoc.vim' }
    --use { 'AndrewRadev/splitjoin.vim' }
    --use { 'RRethy/vim-hexokinase', run = 'make hexokinase' } -- display colours
    ---- use { 'RRethy/vim-illuminate' } -- highlights
    --use { 'Yggdroot/indentLine' }
    --use { 'airblade/vim-rooter' }
    --use { 'easymotion/vim-easymotion' }
    --use { 'farmergreg/vim-lastplace' }
    --use { 'glts/vim-textobj-comment' } -- dac dic yic cic
    --use { 'jiangmiao/auto-pairs' }
    --use { 'junegunn/limelight.vim' } -- highlight blocks
    --use { 'junegunn/vim-easy-align' }
    --use { 'kana/vim-textobj-function' }
    --use { 'kana/vim-textobj-indent' }  -- dii cai
    --use { 'kana/vim-textobj-user' }
    --use { 'matze/vim-move' }
    --use { 'mbbill/undotree' }
    --use { 'mhinz/vim-startify' }
    --use { 'nelstrom/vim-textobj-rubyblock' }
    --use { 'ntpeters/vim-better-whitespace' }
    --use { 'preservim/nerdcommenter' }
    --use { 'rbgrouleff/bclose.vim' }
    --use { 'moll/vim-bbye' }
    --use { 'rhysd/clever-f.vim' }
    --use { 'skywind3000/asyncrun.vim' }
    --use { 'szw/vim-maximizer' }
    --use { 'talek/obvious-resize' }
    --use { 'tpope/vim-dispatch' }
    --use { 'tpope/vim-eunuch' }          -- shell commands
    --use { 'tpope/vim-jdaddy', ft = { 'json' } }
    --use { 'tpope/vim-ragtag' }
    --use { 'tpope/vim-repeat' }
    --use { 'tpope/vim-speeddating' }
    --use { 'tpope/vim-surround' }
    --use { 'tpope/vim-unimpaired' }
    --use { 'schickling/vim-bufonly' }
    --use { 'troydm/easybuffer.vim' }
    --use { 'voldikss/vim-floaterm' }
    --use { 'wellle/targets.vim' }
    --use { 'janko-m/vim-test' }
    --use { 'mattn/emmet-vim' }
    --use { 'andymass/vim-matchup' }

    ---- statusline
    --use { 'edkolev/tmuxline.vim' }
    --use { 'glepnir/galaxyline.nvim', branch = 'main' }

    ---- git
    --use { 'tpope/vim-fugitive' }
    --use { 'airblade/vim-gitgutter' }

    ---- html
    --use { 'AndrewRadev/tagalong.vim' } -- auto change html tags
    --use { 'alvan/vim-closetag' }

    ---- -- ruby
    --use { 'tpope/vim-rails' }
    --use { 'tpope/vim-endwise' }

    ---- js
    --use { 'maxmellon/vim-jsx-pretty' }

    ---- clojure/fennel
    --use { 'Olical/conjure' }
    --use { 'Olical/aniseed', branch = 'develop' }
    --use { 'eraserhd/parinfer-rust', run = 'cargo build --release' }

    ---- markdown
    --use {
      --'iamcco/markdown-preview.nvim',
      --run = 'cd app && yarn install',
    --}

    ---- debug
    --use { 'tweekmonster/startuptime.vim' }

    ---- colors
    --use { 'NLKNguyen/papercolor-theme' }
    --use { 'arcticicestudio/nord-vim' }
    --use { 'ayu-theme/ayu-vim' }
    --use { 'casperstorm/sort-hvid.vim' }
    --use { 'equt/paper.vim' }
    --use { 'lifepillar/vim-colortemplate' }
    --use { 'logico/typewriter-vim' }
    --use { 'mikker/vim-colors-pap' }
    --use { 'pgdouyon/vim-yin-yang' }
    --use { 'rflban/homecolors.vim' }
    --use { 'thenewvu/vim-colors-sketching' }
    --use { 'wolverian/minimal' }
    --use { 'altercation/vim-colors-solarized' }
  --end,
  --config = {
    --display = {
      --open_fn = require 'packer.util'.float
    --}
  --}
--}
--)

local execute = vim.api.nvim_command
local fn = vim.fn

local pack_path = fn.stdpath("data") .. "/site/pack"
local fmt = string.format

function ensure (user, repo)
  -- Ensures a given github.com/USER/REPO is cloned in the pack/packer/start directory.
  local install_path = fmt("%s/packer/start/%s", pack_path, repo, repo)
  if fn.empty(fn.glob(install_path)) > 0 then
    execute(fmt("!git clone https://github.com/%s/%s %s", user, repo, install_path))
    execute(fmt("packadd %s", repo))
  end
end

-- Bootstrap essential plugins required for installing and loading the rest.
ensure("wbthomason", "packer.nvim")
ensure("Olical", "aniseed")

-- Enable Aniseed's automatic compilation and loading of Fennel source code.
vim.g["aniseed#env"] = {
  module = "dotfiles.init",
  compile = true
}
