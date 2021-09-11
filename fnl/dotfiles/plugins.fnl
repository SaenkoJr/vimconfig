(module dotfiles.plugins
  {require {a aniseed.core
            packer packer}})

(defn safe-require-plugin-config [name]
  (let [(ok? val-or-err) (pcall require (.. :dotfiles.plugin. name))]
    (when (not ok?)
      (print (.. "dotfiles error: " val-or-err)))))

(defn- use [...]
  "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well."
  (let [pkgs [...]]
    (packer.startup
      (fn [use]
        (for [i 1 (a.count pkgs) 2]
          (let [name (. pkgs i)
                opts (. pkgs (+ i 1))]
            (-?> (. opts :mod) (safe-require-plugin-config))
            (use (a.assoc opts 1 name))))))))

;; Plugins to be managed by packer.
(use
  ; setup ---------------------------
  :wbthomason/packer.nvim {}
  :Olical/aniseed {:branch :develop}
  :Olical/conjure {:mod :conjure :branch :develop}

  ; lsp ---------------------------
  :RishabhRD/nvim-lsputils {:mod :lsp-utils
                            :requires :RishabhRD/popfix}
  :glepnir/lspsaga.nvim {:mod :lsp-saga}
  :neovim/nvim-lspconfig {:requires [:williamboman/nvim-lsp-installer]}
  :nvim-treesitter/nvim-treesitter {:mod :treesitter
                                    :run "TSUpdate"}
  :nvim-treesitter/nvim-treesitter-textobjects {}
  :p00f/nvim-ts-rainbow {}

  ; completion ---------------------------
  :hrsh7th/nvim-cmp {:mod :nvim-compe}
  :hrsh7th/cmp-buffer {}
  :hrsh7th/cmp-nvim-lsp {}
  :hrsh7th/cmp-path {}
  :hrsh7th/cmp-vsnip {}
  :saadparwaiz1/cmp_luasnip {}
  :PaterJason/cmp-conjure {}
  ;:hrsh7th/vim-vsnip {:requires :hrsh7th/vim-vsnip-integ}
  ;:L3MON4D3/LuaSnip {:mod :luasnip}

  ; file managment ---------------------------
  :junegunn/fzf {:mod :fzf}
  :junegunn/fzf.vim {}
  :dyng/ctrlsf.vim {:mod :ctrlsf}
  :kyazdani42/nvim-web-devicons {}
  :kyazdani42/nvim-tree.lua {:mod :nvim-tree}
  :kevinhwang91/rnvimr {:mod :ranger}

  ; telescope ---------------------------
  :nvim-telescope/telescope.nvim {:mod :telescope
                                  :requires [:nvim-lua/plenary.nvim]}
  :nvim-lua/popup.nvim {}
  :nvim-telescope/telescope-fzy-native.nvim {}
  :luc-tielen/telescope_hoogle {}

  ; utils ---------------------------
  :Shougo/echodoc.vim {}
  :chaoren/vim-wordmotion {}
  :jiangmiao/auto-pairs {:mod :auto-pairs}
  :easymotion/vim-easymotion {:mod :easymotion}
  :lukas-reineke/indent-blankline.nvim {:mod :indentline}
  :airblade/vim-rooter {:mod :rooter}
  :farmergreg/vim-lastplace {}
  :junegunn/vim-easy-align {:mod :easyalign}
  :junegunn/limelight.vim {:mod :limelight}
  :glts/vim-textobj-comment {}
  :kana/vim-textobj-function {}
  :kana/vim-textobj-indent {}
  :kana/vim-textobj-user {}
  :ntpeters/vim-better-whitespace {:mod :better-whitespace}
  :matze/vim-move {}
  :AndrewRadev/splitjoin.vim {}
  ; :mbbill/undotree {}
  :mhinz/vim-startify {:mod :startify}
  :preservim/nerdcommenter {:mod :nerdcommenter}
  :rbgrouleff/bclose.vim {}
  :moll/vim-bbye {}
  :rhysd/clever-f.vim {:mod :clever-f}
  :skywind3000/asyncrun.vim {:mod :asyncrun}
  :szw/vim-maximizer {}
  :talek/obvious-resize {:mod :obvious-resize}
  :tpope/vim-dispatch {}
  :tpope/vim-eunuch {}
  :tpope/vim-jdaddy {:ft :json}
  :tpope/vim-ragtag {}
  :tpope/vim-repeat {}
  :tpope/vim-speeddating {}
  :tpope/vim-surround {:mod :surround}
  :tpope/vim-unimpaired {}
  :tpope/vim-sleuth {}
  :tpope/vim-dotenv {:mod :vim-dotenv}
  :schickling/vim-bufonly {}
  :troydm/easybuffer.vim {}
  :voldikss/vim-floaterm {:mod :floaterm}
  :wellle/targets.vim {}
  :mattn/emmet-vim {:mod :emmet}
  :andymass/vim-matchup {:mod :matchup}

  ; testing ---------------------------
  :rcarriga/vim-ultest {:requires [:janko-m/vim-test]
                        :run ":UpdateRemotePlugins"
                        :mod :test}

  ; database ---------------------------
  :tpope/vim-dadbod {:mod :database}
  :kristijanhusak/vim-dadbod-ui {:requires [:kristijanhusak/vim-dadbod-completion]}

  ; statusline ---------------------------
  :glepnir/galaxyline.nvim {:mod :galaxyline :branch :main}
  :akinsho/nvim-bufferline.lua {:mod :bufferline}

  ; git ---------------------------
  :tpope/vim-fugitive {:mod :git}
  :airblade/vim-gitgutter {}

  ; html ---------------------------
  :AndrewRadev/tagalong.vim {:mod :tagalong}
  :alvan/vim-closetag {:mod :closetag}

  ; ruby ---------------------------
  :tpope/vim-rails {:mod :rails}
  :tpope/vim-endwise {}
  :slim-template/vim-slim {}

  ; js ---------------------------
  :maxmellon/vim-jsx-pretty {:mod :jsx-pretty}

  ; lisps ---------------------------
  :eraserhd/parinfer-rust {:run "cargo build --release"}
  :wlangstroth/vim-racket {}
  ; :guns/vim-sexp {}
  :clojure-vim/clojure.vim {}
  :tpope/vim-salve {}
  :tpope/vim-classpath {}
  :clojure-vim/vim-jack-in {:mod :vim-jack-in}
  :radenling/vim-dispatch-neovim {}

  ; markdown ---------------------------
  :iamcco/markdown-preview.nvim {:mod :markdown :run "cd app && yarn install"}

  ; debug ---------------------------
  :tweekmonster/startuptime.vim {}

   ; colours ---------------------------
   :norcalli/nvim-colorizer.lua {:mod :nvim-colorizer}
   :NLKNguyen/papercolor-theme {}
   :arcticicestudio/nord-vim {}
   :ayu-theme/ayu-vim {}
   :casperstorm/sort-hvid.vim {}
   :equt/paper.vim {}
   :lifepillar/vim-colortemplate {}
   :logico/typewriter-vim {}
   :mikker/vim-colors-pap {}
   :pgdouyon/vim-yin-yang {}
   :rflban/homecolors.vim {}
   :thenewvu/vim-colors-sketching {}
   :wolverian/minimal {}
   :altercation/vim-colors-solarized {}
   :rakr/vim-two-firewatch {})
