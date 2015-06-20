set nocompatible              				" be iMproved, required
syntax on									" set syntax highlighting
filetype off                  				" disable filetype indent, required for Vundle to initialize
" Vundle Setup
set rtp+=~/.vim/bundle/Vundle.vim 			 " set the runtime path to include Vundle 
call vundle#begin() 						 " initialize
											 " list of plugins to load
	Plugin 'gmarik/Vundle.vim' 				 " let Vundle manage Vundle, required
	Plugin 'terryma/vim-multiple-cursors'	 " Vim Multiple cursors
	Plugin 'scrooloose/nerdtree'			 " NERDTree
	Plugin 'kien/ctrlp.vim'					 " Ctrl-P
	Plugin 'tpope/vim-surround'				 " Vim Surround
	Plugin 'bling/vim-airline'				 " Vim-Airline
	Plugin 'saihoooooooo/glowshi-ft.vim'	 " f search motion highlight
	Plugin 'edkolev/tmuxline.vim'			 " duplicate airline config in tmux
	Plugin 'nathanaelkane/vim-indent-guides' " indent guides	
	Plugin 'miyakogi/conoline.vim'			 " highlight current editing line
	Plugin 'luochen1990/rainbow'			 " rainbow parentheses
	Plugin 'jnurmine/Zenburn'				 " Zenburn colorscheme
call vundle#end()            				 " required all of your Plugins must be added before the following line
filetype plugin indent on    				" set indent on plugin, required for Vundle

let g:zenburn_force_dark_Background = 1
set background=dark
colorscheme zenburn			" Default Color Scheme

set pastetoggle=<F2>						" Paste mode to disable auto-indenting while pasting text
set tabstop=4     							" a tab is four spaces
set backspace=indent,eol,start				" allow backspacing over everything in insert mode
set autoindent    							" always set autoindenting on
set copyindent    							" copy the previous indentation on autoindenting
set relativenumber        							" always show line numbers
set shiftwidth=4  							" number of spaces to use for autoindenting
set shiftround    							" use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     							" set show matching parenthesis
set smarttab      							" insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      							" highlight search terms
set incsearch     							" show search matches as you type
set omnifunc=syntaxcomplete#Complete 		" activate autocomplete with <C-X><C-O>, navigate with <C-N> and <C-P>
set completeopt=longest,menuone				" inserts the longest common text of all matches; and the menu will come up even if there's only one match. 
set mouse=a									" activate mouse support
set t_ut=									" disable Background Color Erase
set ruler
set ttyfast
" Disable Arrow keys in favor of hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop> 
" Map Leader key to SpaceBar
let mapleader=" "

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"vim airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
"let g:airline_detect_whitespace=0 			" turn off the whitespace extension
let g:airline#extensions#whitespace#enabled = 0 " turn off the whitespace extension
set noshowmode

"tmuxline theme disable autoset via airline
let g:tmuxline_theme = 'zenburn'
let g:airline#extensions#tmuxline#enabled = 0
"Conoline setup
let g:conoline_auto_enable = 1
" Use theme colors in normal mode
let g:conoline_use_colorscheme_default_normal=1
" Override colors in insert mode
"let g:conoline_use_colorscheme_default_insert=0
"Conoline starts in light mode, this overrides colors to dark (waiting to a way to put it in dark mode on startup)
"let g:conoline_color_insert_light = "guibg=#000000 ctermbg=232"
"let g:conoline_color_insert_nr_light = "guibg=#000000 ctermbg=232"
"Indent Guides Dark Background
let g:indent_guides_auto_colors = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey 

"rainbow parentheses
let g:rainbow_active = 1 " 0 if you want to enable it later via :RainbowToggle
