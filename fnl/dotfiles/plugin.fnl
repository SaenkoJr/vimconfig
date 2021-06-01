(module dotfiles.plugin
  {require {nvim aniseed.nvim
            a aniseed.core
            util dotfiles.util
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
  :wbthomason/packer.nvim {}

  ;; lsp
  ;:RishabhRD/nvim-lsputils {:requires :RishabhRD/popfix}
  ;:glepnir/lspsaga.nvim {}
  ;:hrsh7th/vim-vsnip {:requires :hrsh7th/vim-vsnip-integ}
  ;:neovim/nvim-lspconfig {}
  ;:nvim-treesitter/nvim-treesitter {:mod :treesitter :cmd "TSUpdate all"}

  ;; completion
  ; :hrsh7th/nvim-compe {}
  ; :tami5/compe-conjure {}

  ;:nvim-lua/completion-nvim {}
  ;:steelsojka/completion-buffers {}
  ;:nvim-treesitter/completion-treesitter {}

  ;; file managment
  :junegunn/fzf {:mod :fzf}
  :junegunn/fzf.vim {}
  ;:dyng/ctrlsf.vim {}
  ;:kyazdani42/nvim-web-devicons {}
  ;:kyazdani42/nvim-tree.lua {}
  :francoiscabrol/ranger.vim {:mod :ranger}

  ;; telescope
  ;:nvim-telescope/telescope.nvim {:requires
                                  ;[:nvim-lua/popup.nvim :nvim-lua/plenary.nvim
                                   ;:nvim-telescope/telescope-fzy-native.nvim]}

  ;; utils
  :Shougo/echodoc.vim {}
  :jiangmiao/auto-pairs {}
  ; :RRethy/vim-hexokinase {:run "make hexokinase"}
  ;:easymotion/vim-easymotion {:mod :easymotion}
  ;:Yggdroot/indentLine {:mod :indentline}
  :airblade/vim-rooter {}
  :farmergreg/vim-lastplace {}
  :junegunn/vim-easy-align {}
  ;;:junegunn/limelight.vim {}
  ;:glts/vim-textobj-comment {}
  ;:kana/vim-textobj-function {}
  ;:kana/vim-textobj-indent {}
  ;:kana/vim-textobj-user {}
  ;:nelstrom/vim-textobj-rubyblock {}
  ;:ntpeters/vim-better-whitespace {}
  ;:matze/vim-move {}
  ;;:mbbill/undotree {}
  :mhinz/vim-startify {}
  :preservim/nerdcommenter {}
  :rbgrouleff/bclose.vim {}
  :moll/vim-bbye {}
  ;:rhysd/clever-f.vim {}
  ;:skywind3000/asyncrun.vim {}
  ;:szw/vim-maximizer {}
  ;:talek/obvious-resize {}
  :tpope/vim-dispatch {}
  :tpope/vim-eunuch {}
  :tpope/vim-jdaddy {:ft :json}
  :tpope/vim-ragtag {}
  :tpope/vim-repeat {}
  :tpope/vim-speeddating {}
  :tpope/vim-surround {}
  :tpope/vim-unimpaired {}
  :schickling/vim-bufonly {}
  :troydm/easybuffer.vim {}
  ;:voldikss/vim-floaterm {}
  ;:wellle/targets.vim {}
  ;:janko-m/vim-test {}
  ;:mattn/emmet-vim {}
  ;:andymass/vim-matchup {}

  ; statusline
  ;:edkolev/tmuxline.vim {}
  ;:glepnir/galaxyline.nvim {:branch :main}

  ; git
  :tpope/vim-fugitive {}
  :airblade/vim-gitgutter {}

  ; html
  ;:AndrewRadev/tagalong.vim {}
  ;:alvan/vim-closetag {}

  ;; ruby
  ;:tpope/vim-rails {}
  ;:tpope/vim-endwise {}

  ;; js
  ;:maxmellon/vim-jsx-pretty {}

  ;;; clojure / fennel
  :Olical/aniseed {:branch :develop}
  :Olical/conjure {:branch :develop}
  :eraserhd/parinfer-rust {:run "cargo build --release"}
  ;:guns/vim-sexp {}

  ;; markdown
  ;:iamcco/markdown-preview.nvim {:run "cd app && yarn install"}

  ;; debug
  ;:tweekmonster/startuptime.vim {}

  ;;; colours
  :NLKNguyen/papercolor-theme {})

  ;; --use { 'NLKNguyen/papercolor-theme' }
  ;; --use { 'arcticicestudio/nord-vim' }
  ;; --use { 'ayu-theme/ayu-vim' }
  ;; --use { 'casperstorm/sort-hvid.vim' }
  ;; --use { 'equt/paper.vim' }
  ;; --use { 'lifepillar/vim-colortemplate' }
  ;; --use { 'logico/typewriter-vim' }
  ;; --use { 'mikker/vim-colors-pap' }
  ;; --use { 'pgdouyon/vim-yin-yang' }
  ;; --use { 'rflban/homecolors.vim' }
  ;; --use { 'thenewvu/vim-colors-sketching' }
  ;; --use { 'wolverian/minimal' }
  ;; --use { 'altercation/vim-colors-solarized' }
  ;:HerringtonDarkholme/yats.vim {}
  ;:LnL7/vim-nix {}
  ;:Olical/AnsiEsc {}
  ;:Olical/nvim-local-fennel {}
  ;:Olical/vim-enmasse {}
  ;:PeterRincker/vim-argumentative {}
  ;:airblade/vim-gitgutter {}
  ;:clojure-vim/clojure.vim {}
  ;:clojure-vim/vim-jack-in {}
  ;:dag/vim-fish {}
  ;:hashivim/vim-terraform {}
  ;:hrsh7th/nvim-compe {:mod :compe}
  ;:hylang/vim-hy {}
  ;:itchyny/lightline.vim {:mod :lightline}
  ;:janet-lang/janet.vim {}
  ;:lambdalisue/suda.vim {}
  ;:liuchengxu/vim-better-default {:mod :better-default}
  ;:maxmellon/vim-jsx-pretty {}
  ;:mbbill/undotree {:mod :undotree}
  ;:norcalli/nvim-colorizer.lua {:mod :colorizer}
  ;:pangloss/vim-javascript {}
  ;:prettier/vim-prettier {:ft :javascript}
  ;:radenling/vim-dispatch-neovim {}
  ;:srcery-colors/srcery-vim {:mod :srcery}
  ;:tpope/vim-abolish {}
  ;:tpope/vim-commentary {}
  ;:tpope/vim-dadbod {}
  ;:tpope/vim-dispatch {}
  ;:tpope/vim-eunuch {}
  ;:tpope/vim-fugitive {:mod :fugitive}
  ;:tpope/vim-repeat {}
  ;:tpope/vim-sexp-mappings-for-regular-people {}
  ;:tpope/vim-sleuth {}
  ;:tpope/vim-surround {}
  ;:tpope/vim-unimpaired {}
  ;:tpope/vim-vinegar {}
  ;:tweekmonster/startuptime.vim {}
  ;:w0rp/ale {:mod :ale}
  ;:wbthomason/packer.nvim {}
  ;:wlangstroth/vim-racket {}
