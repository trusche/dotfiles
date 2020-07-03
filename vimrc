set nocompatible
set number
syntax on
filetype plugin indent on
filetype on
filetype indent on

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-eunuch' " move and rename files in buffer
Plug 'scrooloose/nerdtree'
Plug 'ycm-core/YouCompleteMe'

Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'

call plug#end()

set rtp+=~/.fzf

map - :NERDTreeToggle<CR> " open/close nerdtree window
map <leader>r :NERDTreeFind<cr> " this is the key to jump to the nerdtree window from any other window
autocmd BufWinEnter * NERDTreeFind
map ] :NERDTreeFind<CR> " pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once


nnoremap <silent> <C-t> :FZF<CR>
" Disable netrw directory banner
let g:netrw_banner = 0
" Open files in vertical split
let g:netrw_browse_split = 2

let g:netrw_winsize = 25

set termguicolors
colorscheme onedark
" set lighline theme inside lightline config
let g:lightline = { 'colorscheme': 'onedark' }
