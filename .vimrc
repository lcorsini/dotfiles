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
	Plugin 'ctrlpvim/ctrlp.vim'					 " Ctrl-P
	Plugin 'tpope/vim-surround'				 " Vim Surround
	"Plugin 'vim-scripts/simple-pairs'
	Plugin 'jiangmiao/auto-pairs'
	Plugin 'vim-airline/vim-airline'		 " Vim-Airline
	Plugin 'vim-airline/vim-airline-themes'	 " Vim-Airline Themes
	"Plugin 'saihoooooooo/glowshi-ft.vim'	 " f search motion highlight
	"Plugin 'edkolev/tmuxline.vim'			 " duplicate airline config in tmux
	Plugin 'nathanaelkane/vim-indent-guides' " indent guides	
	Plugin 'miyakogi/conoline.vim'			 " highlight current editing line
	Plugin 'luochen1990/rainbow'			 " rainbow parentheses
	Plugin 'jnurmine/Zenburn'				 " Zenburn colorscheme
	"Python coding plugins
	Plugin 'nvie/vim-flake8'				 " PEP8 checking
	Plugin 'tmhedberg/SimpylFold'			 " Folding
	Plugin 'vim-scripts/indentpython.vim'    " Python autoindent
	"Plugin 'MarcWeber/vim-addon-mw-utils'
    "Plugin 'tomtom/tlib_vim'
    "Plugin 'garbas/vim-snipmate'
    "Plugin 'honza/vim-snippets'
    "Plugin 'ervandew/supertab'
    Plugin 'valloric/youcompleteme'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'sunaku/vim-hicterm'             " Color Highlighter for vim
call vundle#end()            				 " required all of your Plugins must be added before the following line
filetype plugin indent on    				" set indent on plugin, required for Vundle

let g:zenburn_force_dark_Background = 1
set background=dark
colorscheme zenburn			" Default Color Scheme

set pastetoggle=<F2>						" Paste mode to disable auto-indenting while pasting text
set tabstop=4     							" a tab is four spaces
set expandtab								"
set backspace=indent,eol,start				" allow backspacing over everything in insert mode
set autoindent    							" always set autoindenting on
set copyindent    							" copy the previous indentation on autoindenting
set relativenumber        					" always show line numbers
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

" Python setup
" Enable folding
set foldmethod=indent
set foldlevel=99
let python_highlight_all = 1
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType htmldjango.html let b:surround_{char2nr("v")} = "{{ \r }}"
autocmd FileType htmldjango.html let b:surround_{char2nr("{")} = "{{ \r }}"
autocmd FileType htmldjango.html let b:surround_{char2nr("%")} = "{% \r %}"
autocmd FileType htmldjango.html let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
autocmd FileType htmldjango.html let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
autocmd FileType htmldjango.html let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
autocmd FileType htmldjango.html let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
autocmd FileType htmldjango.html let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"
au BufNewFile,BufRead *.html set filetype=htmldjango

"vim airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0
let g:airline#extensions#whitespace#enabled = 0 " turn off the whitespace extension
set noshowmode

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif
" powerline symbols with nerd fonts
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
  let g:airline_symbols.maxlinenr = ' '
  let g:airline_symbols.space = "\ua0"
" let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ' ', ':%3v'])
"tmuxline theme disable autoset via airline
let g:tmuxline_theme = 'zenburn'
let g:airline#extensions#tmuxline#enabled = 0

"Conoline setup
let g:conoline_auto_enable = 1
" Use theme colors in normal mode
let g:conoline_use_colorscheme_default_normal=1

"Indent Guides Dark Background
let g:indent_guides_auto_colors = 1
let g:indent_guides_enable_on_vim_startup = 1

"rainbow parentheses
let g:rainbow_active = 1 " 0 if you want to enable it later via :RainbowToggle

"NERDTree
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
"vim-devicons
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ' '
let g:DevIconsDefaultFolderOpenSymbol = ' '
