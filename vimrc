set nocompatible
set number
set mouse=ar
syntax on
filetype plugin indent on
filetype on
filetype indent on

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set vb " visual bell instead of bleeping beeping

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-eunuch' " move and rename files in buffer
Plug 'scrooloose/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'vim-ruby/vim-ruby'
Plug 'airblade/vim-gitgutter'
Plug 'zivyangll/git-blame.vim'
Plug 'tpope/vim-rails'
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'mileszs/ack.vim'

call plug#end()

let g:ale_fixers = {
  \   'javascript': ['prettier'],
  \   'ruby': ['rubocop'],
  \   'scss': ['prettier'],
  \   'css': ['prettier'],
  \   'haml': ['remove_trailing_lines', 'trim_whitespace']
  \}
let g:ale_linters = {
  \   'javascript': ['prettier'],
  \   'ruby': ['rubocop'],
  \   'scss': ['prettier'],
  \   'css': ['prettier']
  \}

let g:ale_fix_on_save = 1
let g:ale_ruby_rubocop_executable = 'bundle'
let g:ale_ruby_rubocop_options = '--safe-auto-correct --force-exclusion'

set rtp+=~/.fzf

map - :NERDTreeToggle<CR> " open/close nerdtree window
map <leader>r :NERDTreeFind<cr> " this is the key to jump to the nerdtree window from any other window
" autocmd BufWinEnter * NERDTreeFind
map ] :NERDTreeFind<CR> " pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once

nnoremap <C-[> <C-t>
nnoremap <silent> <C-t> :FZF<CR>
" Disable netrw directory banner
let g:netrw_banner = 0
" Open files in vertical split
let g:netrw_browse_split = 2

let g:netrw_winsize = 25

set termguicolors
set guifont=Fira\ Code:h13
colorscheme onedark
" set lighline theme inside lightline config
let g:lightline = { 'colorscheme': 'onedark' }

set wildignore+=node_modules/**,vendor/**,coverage/**,log/**,assets/**,rubycritic/**

" https://github.com/ggreer/the_silver_searcher
" let g:ackprg = 'ag --nogroup --nocolor --column'
