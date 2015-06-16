set nocompatible              " be iMproved, required
filetype off                  " required
 
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
	Plugin 'gmarik/Vundle.vim'
	
	Plugin 'tpope/vim-sensible'      " Some sensible default settings
	Plugin 'tpope/vim-fugitive'      " Git plugin.  See `:help fugitive`
	Plugin 'mhinz/vim-signify'       " Display git status in line number column
	Plugin 'scrooloose/nerdtree'     " IDE like file browser on the left. Open with `:NERDTree`
	Plugin 'majutsushi/tagbar'       " List vars, classes, etc on the right. Open with `:Tagbar`
	Plugin 'bling/vim-airline'       " Fancy statusline at the bottom
	Plugin 'scrooloose/syntastic'    " Better display of syntax errors
	Plugin 'ctrlpvim/ctrlp.vim'      " File fuzzy finder. Activate with `C-p`
	Plugin 'matchit.zip'             " Makes `%` match more stuff
	Plugin 'hail2u/vim-css3-syntax'  " Improve CSS support
	Plugin 'pangloss/vim-javascript' " Improve JavaScript support
	Plugin 'elzr/vim-json'           " Improved support for .json files
	Plugin 'tpope/vim-markdown'      " Prettier markdown

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

colorscheme slate2
set number

" Ensure PowerLine "Fancy" symbols
" let g:Powerline_symbols = 'fancy'

"Highlight text as you search
:set incsearch
"Make search insensitive to case unless capital letters are used
:set ignorecase
:set smartcase
"Make search high results
:set hlsearch
"Clear highlight with \q
:nmap \q :nohlsearch<CR>

" Syntastic Recommended Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" **MY MAPPINGS** 

 " Make up/down move one line on screen
  :nmap j gj
  :nmap k gk
 " Make C-e go to previous buffer 
  :nmap <C-e> :e#<CR> 
 " Cycle between buffers
  :nmap <C-n> :bnext<CR>
  :nmap <C-p> :bprev<CR>
