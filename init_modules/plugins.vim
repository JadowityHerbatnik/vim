if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif


nmap <leader>pi :PlugInstall<CR>
nmap <Leader>pc :PlugClean<CR>

call plug#begin('~/.config/nvim/plugged')
Plug 'chr4/nginx.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'rakr/vim-one'
Plug 'chriskempson/base16-vim'
Plug 'lilydjwg/colorizer'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'camspiers/lens.vim'
Plug 'mogelbrod/vim-jsonpath'
Plug 'ghifarit53/tokyonight-vim'
Plug 'iCyMind/NeoSolarized'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
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
Plug 'idanarye/vim-merginal'
Plug 'airblade/vim-gitgutter'
Plug 'LukeSmithxyz/vimling'
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary/'
Plug 'JoosepAlviste/nvim-ts-context-commentstring'
Plug 'vifm/vifm.vim'
Plug 'kovetskiy/sxhkd-vim'
call plug#end()
