set nocompatible
set number
syntax on
filetype on
filetype plugin on
filetype indent on

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'rafi/awesome-vim-colorschemes'
" Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vim-ruby/vim-ruby'
Plug 'jacoborus/tender.vim'
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-eunuch'

" Tomorrow color scheme for ruby
Plug 'chriskempson/base16-vim'
"  Plug 'preservim/nerdtree'

Plug 'pangloss/vim-javascript'

call plug#end()

set rtp+=~/.fzf

" autocmd vimenter * NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" map — :NERDTreeToggle<CR> " open/close nerdtree window
" map <leader>r :NERDTreeFind<cr> “ this is the key to jump to the nerdtree window from any other window
" autocmd BufWinEnter * NERDTreeFind
" map ] :NERDTreeFind<CR> “ pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once
"

" Disable netrw directory banner
let g:netrw_banner = 0
" Open files in vertical split
let g:netrw_browse_split = 2

let g:netrw_winsize = 25


set termguicolors
colorscheme onedark
" set lighline theme inside lightline config
let g:lightline = { 'colorscheme': 'onedark' }
