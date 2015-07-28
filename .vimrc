set nocompatible              " be iMproved, required
filetype off                  " required

" =================== Vundle Init ===================================
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" =================== Vundle Plugins ================================

Plugin 'gmarik/Vundle.vim'       " let Vundle manage Vundle, required
Plugin 'tpope/vim-sensible'      " Some sensible default settings
Plugin 'tpope/vim-fugitive'      " Git plugin.  See `:help fugitive`
Plugin 'mhinz/vim-signify'       " Display git status in line number column
Plugin 'scrooloose/nerdtree'     " IDE like file browser on the left. Open with `:NERDTree`
Plugin 'majutsushi/tagbar'       " List vars, classes, etc on the right. Open with `:Tagbar`
Plugin 'tpope/vim-surround'		 " Bracket Management
Plugin 'tpope/vim-repeat'	     " Let's plugins use the . command to repeat text changes
Plugin 'itchyny/lightline.vim'	 " Lightline statusline/tabline for Vim
Plugin 'rstacruz/sparkup'	     " Write HTML code faster
Plugin 'msanders/snipmate.vim'	 " Snippet output
Plugin 'scrooloose/syntastic'    " Better display of syntax errors
Plugin 'ctrlpvim/ctrlp.vim'      " File fuzzy finder. Activate with `C-p`
Plugin 'matchit.zip'             " Makes `%` match more stuff
Plugin 'hail2u/vim-css3-syntax'  " Improve CSS support
Plugin 'pangloss/vim-javascript' " Improve JavaScript support
Plugin 'elzr/vim-json'           " Improved support for .json files
Plugin 'tpope/vim-markdown'      " Prettier markdown

call vundle#end()

" =================== Vim tweaks ====================================

filetype plugin indent on  

let mapleader=" "
set t_Co=256
set background=light    " Use light theme of PaperColor
colorscheme PaperColor
set number

" =================== Indention Settings ============================

:set tabstop=4     " tabs are at proper location
:set expandtab     " don't use actual tab character (ctrl-v)
:set shiftwidth=4  " indenting is 4 spaces
:set autoindent    " turns it on
:set smartindent   " does the right thing (mostly) in programs
:set cindent       " stricter rules for C programs

:set incsearch     " Highlight text as you search
:set ignorecase    " Make search insensitive to case unless capital letters are used
:set smartcase
:set hlsearch      " Make search high results
:nmap /q :nohlsearch<CR> " Clear highlight with \q

" =================== Syntastic Settings ============================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" =================== Lightline Settings ============================

let g:lightline = {
      \ 'component': {
      \   'readonly': '%{&readonly?"⭤":""}',
      \ }
      \ }

" =================== NERDTree Settings ===============================

"autocmd vimenter * NERDTree " automatically start Nerdtree on launch
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" =================== Custom Mappings ===============================

":nmap j gj " Make down move one line on screen
":nmap k gk " Make up move one line on screen
:nmap <C-e> :e#<CR> " Make C-e go to previous buffer 
:nmap <C-n> :bnext<CR> " Cycle Next buffer
:nmap <C-p> :bprev<CR> " Cycle Previous buffer
map <C-n> :NERDTreeToggle<CR> " Open NERDTree with Ctrl+n

" =================== EOF ===========================================
