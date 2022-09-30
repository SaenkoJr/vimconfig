(module dotfiles.p
  {autoload {core aniseed.core
             packer packer}})

(vim.cmd "packadd packer.nvim")

(defn- safe-require-plugin-config [name]
  (let [(ok? val-or-err) (pcall require (.. :dotfiles.plugins. name))]
    (when (not ok?)
      (print (.. "dotfiles error: " val-or-err)))))

(packer.init {:max_jobs 8
              :show_all_info false})

(defn- use [...]
  "Iterates through the arguments as pairs and calls packer's use function for
  each of them. Works around Fennel not liking mixed associative and sequential
  tables as well."
  (let [pkgs [...]]
    (packer.startup
      (fn [p-use]
        (for [i 1 (core.count pkgs) 2]
          (let [name (. pkgs i)
                opts (. pkgs (+ i 1))]
            (-?> (. opts :mod) (safe-require-plugin-config))
            (p-use (core.assoc opts 1 name)))))))
  nil)

;; Plugins to be managed by packer.
(use
  ; setup ---------------------------
  :wbthomason/packer.nvim {}
  :lewis6991/impatient.nvim {}
  :Olical/aniseed {:branch :develop}
  :Olical/conjure {:mod :conjure
                   :branch :develop}
  :nvim-lua/plenary.nvim {}
  :nvim-lua/popup.nvim {}

  ; lsp ---------------------------
  :RishabhRD/nvim-lsputils {:mod :lsp-utils
                            :requires :RishabhRD/popfix}
  :neovim/nvim-lspconfig {:requires [:williamboman/nvim-lsp-installer]}
  :j-hui/fidget.nvim {:mod :fidget} ; lsp status
  :jubnzv/virtual-types.nvim {}
  :glepnir/lspsaga.nvim {:mod :lsp-saga}
  ; :jose-elias-alvarez/null-ls.nvim {:mod :null-ls}

  ; treesitter ---------------------------
  :nvim-treesitter/nvim-treesitter {:mod :treesitter
                                    :run "TSUpdate"}
  :nvim-treesitter/playground {}
  :nvim-treesitter/nvim-treesitter-textobjects {}
  :p00f/nvim-ts-rainbow {}
  :RRethy/nvim-treesitter-endwise {}
  :nvim-treesitter/nvim-treesitter-context {:mod :treesitter-context}
  :lewis6991/spellsitter.nvim {:mod :spellsitter}

  ; completion ---------------------------
  :hrsh7th/nvim-cmp {:mod :nvim-cmp}
  :hrsh7th/cmp-buffer {}
  :hrsh7th/cmp-nvim-lsp {}
  :hrsh7th/cmp-path {}
  :saadparwaiz1/cmp_luasnip {}
  :PaterJason/cmp-conjure {}
  :L3MON4D3/LuaSnip {:mod :luasnip}
  :ray-x/lsp_signature.nvim {:mod :lsp-signature}

  ; file managment / fzf ---------------------------
  :junegunn/fzf {:mod :fzf}
  :junegunn/fzf.vim {}
  :dyng/ctrlsf.vim {:mod :ctrlsf}
  :windwp/nvim-spectre {:mod :nvim-spectre}
  :kyazdani42/nvim-web-devicons {}
  :kyazdani42/nvim-tree.lua {:mod :nvim-tree}
  :kevinhwang91/rnvimr {:mod :ranger}

  ; buffers ---------------------------
  :rbgrouleff/bclose.vim {}
  :moll/vim-bbye {}
  :schickling/vim-bufonly {}

  ; telescope ---------------------------
  :nvim-telescope/telescope.nvim {:mod :telescope
                                  :requires []}
  :nvim-telescope/telescope-fzf-native.nvim {:run "make"}
  :luc-tielen/telescope_hoogle {}

  ; utils ---------------------------
  ; :jiangmiao/auto-pairs {:mod :auto-pairs}
  ; :windwp/nvim-autopairs {:mod :auto-pairs}
  ; :ZhiyuanLck/smart-pairs {:mod :auto-pairs}
  :easymotion/vim-easymotion {:mod :easymotion}
  :lukas-reineke/indent-blankline.nvim {:mod :indentline}
  :airblade/vim-rooter {:mod :rooter}
  :junegunn/vim-easy-align {:mod :easyalign}
  :glts/vim-textobj-comment {}
  :kana/vim-textobj-function {}
  :kana/vim-textobj-indent {}
  :kana/vim-textobj-user {}
  :ntpeters/vim-better-whitespace {:mod :better-whitespace}
  :AndrewRadev/splitjoin.vim {}
  :mhinz/vim-startify {:mod :startify}
  ; :goolord/alpha-nvim {:mod :alpha-nvim}
  :preservim/nerdcommenter {:mod :nerdcommenter}
  :rhysd/clever-f.vim {:mod :clever-f}
  :skywind3000/asyncrun.vim {:mod :asyncrun}
  :szw/vim-maximizer {}
  :talek/obvious-resize {:mod :obvious-resize}
  :tpope/vim-abolish {} ; crs, crm, crc, crs, cru, etc...
  :tpope/vim-dispatch {}
  :tpope/vim-jdaddy {:ft :json}
  :tpope/vim-ragtag {}
  ; :tpope/vim-repeat {}
  :tpope/vim-surround {:mod :surround}
  :tpope/vim-unimpaired {}
  :voldikss/vim-floaterm {:mod :floaterm}
  :andymass/vim-matchup {:mod :matchup}
  :gelguy/wilder.nvim {:mod :wilder}
  :jparise/vim-graphql {}

  ; testing ---------------------------
  ; :rcarriga/vim-ultest {:run ":UpdateRemotePlugins"
  ;                       :mod :test}
  :janko-m/vim-test {:mod :test}

  ; orgmode ---------------------------
  :kristijanhusak/orgmode.nvim {:mod :orgmode}
  :akinsho/org-bullets.nvim {}
  :lukas-reineke/headlines.nvim {}

  ; database ---------------------------
  :tpope/vim-dadbod {:mod :database}
  :kristijanhusak/vim-dadbod-ui {:requires [:kristijanhusak/vim-dadbod-completion]}

  ;; statusline ---------------------------
  :nvim-lualine/lualine.nvim {:mod :lualine-nvim}
  :akinsho/nvim-bufferline.lua {:mod :bufferline}

  ; git ---------------------------
  :tpope/vim-fugitive {:mod :git}
  :airblade/vim-gitgutter {}
  :f-person/git-blame.nvim {}

  ; yaml ---------------------------
  :cuducos/yaml.nvim {:ft [:yaml :eruby.yaml]}

  ; html ---------------------------
  :AndrewRadev/tagalong.vim {:mod :tagalong}
  :alvan/vim-closetag {:mod :closetag}
  :mattn/emmet-vim {:mod :emmet}

  ; ruby ---------------------------
  :tpope/vim-rails {:mod :rails}
  :onemanstartup/vim-slim {}

  ; js ---------------------------
  :maxmellon/vim-jsx-pretty {:mod :jsx-pretty}

  ; lisp ---------------------------
  :eraserhd/parinfer-rust {:mod :parinfer
                           :run "cargo build --release"
                           :ft [:fennel :clojure :racket :scheme]}
  :wlangstroth/vim-racket {}
  ; :guns/vim-sexp {}
  ; :tpope/vim-sexp-mappings-for-regular-people {}
  :clojure-vim/clojure.vim {}
  :tpope/vim-salve {}
  :tpope/vim-classpath {}
  :clojure-vim/vim-jack-in {:mod :vim-jack-in}
  :radenling/vim-dispatch-neovim {}

  ; markdown ---------------------------
  :iamcco/markdown-preview.nvim {:mod :markdown
                                 :run "cd app && yarn install"}

  ; debug ---------------------------
  :tweekmonster/startuptime.vim {}

  ; colours ---------------------------
  :norcalli/nvim-colorizer.lua {:mod :nvim-colorizer}
  :NLKNguyen/papercolor-theme {}
  ; :ayu-theme/ayu-vim {}
  :Shatur/neovim-ayu {}
  :equt/paper.vim {})
