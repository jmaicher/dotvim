" ########################
" ## .vimrc by jmaicher ##
" ########################

" setup pathogen (https://github.com/tpope/vim-pathogen)
call pathogen#infect()
call pathogen#helptags()

" ######################
" ## General settings ##
" ######################

set background=dark
syntax enable			      " activate syntax highlighting
colorscheme solarized

set number			        " show line numbers
set hidden			        " allows vim to use buffers effectively
set encoding=utf-8
set history=1000		    " allows to store more than 20 of the last commands/search patterns

set wildmenu			      " show alternatives when using <tab> in command line
set wildmode=list:longest	  " .. and let it behave like autocompletion in the shell

set ignorecase 			    " ignore case when searching
set smartcase			      " .. but when query contains uppercase letter don't

set scrolloff=3			    " show more context when scrolling
set ruler			          " show ruler in status bar

set hlsearch 			      " highlight search terms
set incsearch			      " ..dynamically as they are typed.

set visualbell			    " tells vim not beep around

filetype plugin indent on	      " detect filetypes automatically
set backspace=indent,eol,start	" intuitive backspacing

set tabstop=2			      " use two columns/spaces tab
set shiftwidth=2
set expandtab			      " convert tabstop when pressing tab in insert mode

set autochdir           " always switch to the current file directory
set backup              " make backup files
set backupdir=~/.vim-tmp/backup   " centralize backup files..
set directory=~/.vim-tmp/swp      " ..and swp files in ~/.vim-tmp

" ##################
" ## Key mappings ##
" ##################

let mapleader = ","
" Command-T plugin
nnoremap <silent> <C-t> :CommandT<CR>
nnoremap <silent> <C-b> :CommandTBuffer<CR>


" ##############
" ## NERDTree ##
" ##############

" open NERDTree automatically when vim starts up if no file
" has been specified
autocmd vimenter * if !argc() | NERDTree | endif
" close vim when NERDTree is the only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
