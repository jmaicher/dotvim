" setup pathogen (https://github.com/tpope/vim-pathogen)
call pathogen#infect()
call pathogen#helptags()

" keybindings
nnoremap <silent> <C-t> :CommandT<CR>
nnoremap <silent> <C-b> :CommandTBuffer<CR>

" general settings
syntax enable
set number

" colors
set background=dark
colorscheme solarized

" bugfixes
set backspace=2 " make backspace work like in most other apps
