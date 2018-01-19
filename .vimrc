""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug-in Manager
""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/junegunn/vim-plug
"
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'

" Initialize plugin system
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win32")
  source $VIMRUNTIME/mswin.vim
  behave mswin
endif

" Reload .vimrc automatically
autocmd! bufwritepost .vimrc source %

set nocompatible              " be iMproved, required
set autoread  " detect when a file is changed
set clipboard=unnamed

set backspace=indent,eol,start

"""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Line number
set number

" Show current position
set ruler

" Hide menu and toolbar
set guioptions-=m
set guioptions-=T

" Window position and size
if has("gui")
  set lines=60 columns=100
  winpos 0 0
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase

set incsearch
" Highlight search result
set hlsearch

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on
set background=dark
colorscheme solarized
let g:solarized_termcolors=256


"""""""""""""""""""""""""""""""""""""""""""""""""""
" Encoding
"""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,cp936

set fileformat=unix

language messages en_US.utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
" set tw=79
" set colorcolumn=90
set wrap "Wrap lines

set ai "Auto indent
set si "Smart indent


""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowritebackup
set noswapfile

filetype plugin on
filetype indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=700
set undolevels=700


""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Shortcuts
""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

" Move around windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" New tab
map <Leader>t <esc>:tabnew<CR>

" Move around tabs
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" Moving code blocks
vnoremap < <gv
vnoremap > >gv

" Bind nohl
" Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" set t_Co=256

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

" map fuzzyfinder (CtrlP) plugin
" nmap <silent> <leader>t :CtrlP<cr>
nmap <silent> <leader>r :CtrlPBuffer<cr>
let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$'
            \ }

" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2

