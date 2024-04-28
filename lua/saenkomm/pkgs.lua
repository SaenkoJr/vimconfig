-- [nfnl] Compiled from fnl/saenkomm/pkgs.fnl by https://github.com/Olical/nfnl, do not edit.
module(saenkomm.p, {[autoload] = {[core] = aniseed.core, packer = packer}, [require] = {[packer_util] = packer.util}})
vim.cmd("packadd packer.nvim")
packer.init({max_jobs = 8, display = {compact = true, open_fn = ("float")[packer_util]}, show_all_info = false})
local function _1_(...)
  local ok_3f, val_or_err = pcall(require, ("saenkomm.plugins." .. name))
  if not ok_3f then
    return print(("saenkomm error: " .. val_or_err))
  else
    return nil
  end
end
__fnl_global__defn_2d(__fnl_global__safe_2drequire_2dplugin_2dconfig, {name}, _1_(...))
local _3_
do
  local pkgs = {...}
  local function _4_(p_use)
    for i = 1, core.count(pkgs), 2 do
      local name = pkgs[i]
      local opts = pkgs[(i + 1)]
      do
        local _5_ = opts.mod
        if (nil ~= _5_) then
          __fnl_global__safe_2drequire_2dplugin_2dconfig(_5_)
        else
        end
      end
      p_use(core.assoc(opts, 1, name))
    end
    return nil
  end
  _3_ = packer.startup(_4_)
end
__fnl_global__defn_2d(use, {...}, "Iterates through the arguments as pairs and calls packer's use function for\n  each of them. Works around Fennel not liking mixed associative and sequential\n  tables as well.", _3_, nil)
return use("lewis6991/impatient.nvim", {}, "Olical/aniseed", {}, "Olical/conjure", {mod = "conjure", branch = "develop"}, "m00qek/baleia.nvim", {tag = "v1.3.0"}, "nvim-lua/plenary.nvim", {}, "nvim-lua/popup.nvim", {}, "RishabhRD/nvim-lsputils", {mod = "lsp-utils", requires = "RishabhRD/popfix"}, "williamboman/mason-lspconfig.nvim", {requires = {"williamboman/mason.nvim", "neovim/nvim-lspconfig", "jayp0521/mason-null-ls.nvim"}}, "j-hui/fidget.nvim", {mod = "fidget", tag = "legacy"}, "jubnzv/virtual-types.nvim", {}, "nvimdev/lspsaga.nvim", {mod = "lsp-saga"}, "jose-elias-alvarez/null-ls.nvim", {}, "zbirenbaum/copilot.lua", {mod = "copilot"}, "nanotee/sqls.nvim", {}, "nvim-treesitter/nvim-treesitter", {mod = "treesitter", run = "TSUpdate"}, "nvim-treesitter/nvim-treesitter-textobjects", {}, "RRethy/nvim-treesitter-endwise", {}, "hrsh7th/nvim-cmp", {mod = "nvim-cmp"}, "hrsh7th/cmp-buffer", {}, "hrsh7th/cmp-nvim-lsp", {}, "hrsh7th/cmp-path", {}, "saadparwaiz1/cmp_luasnip", {}, "PaterJason/cmp-conjure", {}, "ray-x/lsp_signature.nvim", {mod = "lsp-signature"}, "zbirenbaum/copilot-cmp", {}, "L3MON4D3/LuaSnip", {mod = "luasnip"}, "junegunn/fzf", {mod = "fzf"}, "junegunn/fzf.vim", {}, "dyng/ctrlsf.vim", {mod = "ctrlsf"}, "windwp/nvim-spectre", {mod = "nvim-spectre"}, "kyazdani42/nvim-web-devicons", {}, "kyazdani42/nvim-tree.lua", {mod = "nvim-tree"}, "kevinhwang91/rnvimr", {mod = "ranger"}, "rbgrouleff/bclose.vim", {}, "moll/vim-bbye", {}, "schickling/vim-bufonly", {}, "nvim-telescope/telescope.nvim", {mod = "telescope", requires = {}}, "nvim-telescope/telescope-fzf-native.nvim", {run = "make"}, "luc-tielen/telescope_hoogle", {}, "nvim-telescope/telescope-ui-select.nvim", {}, "windwp/nvim-autopairs", {mod = "auto-pairs"}, "lukas-reineke/indent-blankline.nvim", {mod = "indentline"}, "airblade/vim-rooter", {mod = "rooter"}, "junegunn/vim-easy-align", {mod = "easyalign"}, "glts/vim-textobj-comment", {}, "kana/vim-textobj-function", {}, "kana/vim-textobj-indent", {}, "kana/vim-textobj-user", {}, "ntpeters/vim-better-whitespace", {mod = "better-whitespace"}, "AndrewRadev/splitjoin.vim", {}, "mhinz/vim-startify", {mod = "startify"}, "preservim/nerdcommenter", {mod = "nerdcommenter"}, "rhysd/clever-f.vim", {mod = "clever-f"}, "skywind3000/asyncrun.vim", {mod = "asyncrun"}, "szw/vim-maximizer", {}, "talek/obvious-resize", {mod = "obvious-resize"}, "tpope/vim-abolish", {}, "tpope/vim-dispatch", {}, "tpope/vim-jdaddy", {ft = "json"}, "tpope/vim-ragtag", {}, "tpope/vim-repeat", {}, "tpope/vim-surround", {mod = "surround"}, "tpope/vim-unimpaired", {}, "voldikss/vim-floaterm", {mod = "floaterm"}, "andymass/vim-matchup", {mod = "matchup"}, "gelguy/wilder.nvim", {mod = "wilder"}, "jparise/vim-graphql", {}, "ThePrimeagen/harpoon", {}, "dhruvasagar/vim-table-mode", {}, "fabridamicelli/cronex.nvim", {mod = "cronex"}, "janko-m/vim-test", {mod = "test"}, "kristijanhusak/orgmode.nvim", {mod = "orgmode"}, "akinsho/org-bullets.nvim", {}, "lukas-reineke/headlines.nvim", {}, "tpope/vim-dadbod", {mod = "database"}, "kristijanhusak/vim-dadbod-ui", {requires = {"kristijanhusak/vim-dadbod-completion"}}, "nvim-lualine/lualine.nvim", {mod = "lualine-nvim"}, "akinsho/nvim-bufferline.lua", {mod = "bufferline"}, "tpope/vim-fugitive", {mod = "git"}, "airblade/vim-gitgutter", {}, "f-person/git-blame.nvim", {}, "cuducos/yaml.nvim", {ft = {"yaml", "eruby.yaml"}}, "AndrewRadev/tagalong.vim", {mod = "tagalong"}, "alvan/vim-closetag", {mod = "closetag"}, "mattn/emmet-vim", {mod = "emmet"}, "tpope/vim-rails", {mod = "rails"}, "onemanstartup/vim-slim", {}, "maxmellon/vim-jsx-pretty", {mod = "jsx-pretty"}, "eraserhd/parinfer-rust", {mod = "parinfer", run = "cargo build --release", ft = {"fennel", "clojure", "racket", "scheme"}}, "wlangstroth/vim-racket", {}, "clojure-vim/clojure.vim", {}, "tpope/vim-salve", {}, "tpope/vim-classpath", {}, "clojure-vim/vim-jack-in", {mod = "vim-jack-in"}, "radenling/vim-dispatch-neovim", {}, "iamcco/markdown-preview.nvim", {mod = "markdown", run = "cd app && yarn install", ft = {"markdown", "md"}}, "tweekmonster/startuptime.vim", {}, "norcalli/nvim-colorizer.lua", {mod = "nvim-colorizer"}, "NLKNguyen/papercolor-theme", {}, "Shatur/neovim-ayu", {}, "equt/paper.vim", {}, "folke/tokyonight.nvim", {}, "shaunsingh/nord.nvim", {}, "projekt0n/github-nvim-theme", {}, "jesseleite/nvim-noirbuddy", {requires = {"tjdevries/colorbuddy.nvim"}})
