let g:mapleader =","

source $HOME/.config/nvim/init_modules/plugins.vim
source $HOME/.config/nvim/init_modules/navigation.vim
source $HOME/.config/nvim/init_modules/snippets.vim
source $HOME/.config/nvim/init_modules/general.vim
source $HOME/.config/nvim/init_modules/lukes.vim
source $HOME/.config/nvim/init_modules/emmet.vim
source $HOME/.config/nvim/init_modules/nerdtree.vim
source $HOME/.config/nvim/init_modules/autocompiles.vim
source $HOME/.config/nvim/init_modules/git.vim
source $HOME/.config/nvim/init_modules/fzf.vim
source $HOME/.config/nvim/init_modules/json.vim
source $HOME/.config/nvim/init_modules/airline.vim
source $HOME/.config/nvim/init_modules/syntax-highlighting.vim
source $HOME/.config/nvim/init_modules/syntax-tree-surfer.lua
source $HOME/.config/nvim/init_modules/treesitter.lua
source $HOME/.config/nvim/init_modules/telescope.lua
source $HOME/.config/nvim/init_modules/lsp.lua
source $HOME/.config/nvim/init_modules/copilot.lua

" Some basics:
  set background=dark
  set go=a
  set mouse=a
  set clipboard+=unnamedplus
  nnoremap c "_c
  vnoremap x "_x
  set nocompatible
  filetype plugin indent on
  set omnifunc=syntaxcomplete#Complete
  syntax enable
  set encoding=utf-8
  set number relativenumber
  set expandtab
  set tabstop=2
  set shiftwidth=2
  set hlsearch
  set termguicolors
  set t_Co=256
  set diffopt+=vertical
" disable incremental preview during substition
  set inccommand=""
  set title

  let g:neosolarized_italic = 1
  let g:neosolarized_termtrans = 1
  let g:gruvbox_italic = 1
  let g:gruvbox_contrast_dark = "hard"
  let g:tokyonight_style = 'night' " available: night, storm
  let g:tokyonight_enable_italic = 1

  colorscheme base16-onedark

  set smarttab
  set cindent
" always uses spaces instead of tab characters

" Enable autocompletion:
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright

