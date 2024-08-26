if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif


nmap <leader>pi :PlugInstall<CR>
nmap <Leader>pc :PlugClean<CR>

call plug#begin('~/.config/nvim/plugged')
Plug 'github/copilot.vim'
Plug 'ziontee113/syntax-tree-surfer'
Plug 'tpope/vim-obsession'
Plug 'chr4/nginx.vim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'dyng/ctrlsf.vim'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'rafamadriz/friendly-snippets'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'navarasu/onedark.nvim'
Plug 'chriskempson/base16-vim'
Plug 'lilydjwg/colorizer'
Plug 'camspiers/lens.vim'
Plug 'mogelbrod/vim-jsonpath'
Plug 'ghifarit53/tokyonight-vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'notjedi/nvim-rooter.lua'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'rhysd/clever-f.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'rhysd/git-messenger.vim'
Plug 'airblade/vim-gitgutter'
Plug 'LukeSmithxyz/vimling'
" Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'vifm/vifm.vim'
Plug 'kovetskiy/sxhkd-vim'
call plug#end()
