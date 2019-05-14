set nocompatible              " be iMproved, required
filetype off                  " required
" filetype plugin on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" plugins
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'mbbill/undotree'
Plugin 'flazz/vim-colorschemes'
Plugin 'ReplaceWithRegister'
Plugin 'christoomey/vim-titlecase'
Plugin 'christoomey/vim-system-copy'
Plugin 'AutoComplPop'
Plugin 'misterbuckley/vim-definitive'
" Plugin 'wincent/command-t'
" Plugin 'zivyangll/git-blame.vim'
Plugin 'idbrii/vim-ack'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" 

" custom settings
syntax enable
colorscheme onedark
set path+=**
set wildmenu

" variables
set tabstop=4               "tab indent
set shiftwidth=4            "'>' indent
set expandtab               "make tab out of spaces
set number relativenumber
set completeopt=longest,menuone
set hlsearch

" commands
command MakeTags !ctags -R .

" key map --
inoremap jk    <esc>
vnoremap jk    <esc>
nmap cm    gc
nmap cmm   gcc
noremap  <C-n>      :NERDTreeToggle<CR>
nnoremap <C-u>      :UndotreeToggle<CR>
nnoremap gd         <C-]>
" nnoremap tgd        :tab split<CR> :FindDefinition<CR>
" nnoremap <S-s>      :CommandT<CR>
" nnoremap gb         :GitBlame<CR>
"nnoremap gb        :Gblame<CR>
" nnoremap <buffer> K :<C-u>execute "!pydoc " . expand("<cword>")<CR>

" map switch tab
" nnoremap <C-S-tab>  :tabprevious<CR>
" nnoremap <C-tab>    :tabnext<CR>
" nnoremap <C-d>      :tabclose<CR>
" nnoremap <C-h>      :tabprevious<CR>
" nnoremap <C-l>      :tabnext<CR>
"nnoremap <C-n>      :tabnew<CR>
" nnoremap <C-t>      :tab split<CR>

" open nerdtree when no file is selected on startup
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" close NERDTree if its the last open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" set persistant undo
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')                           " check if your vim version supports it
    let myUndoDir = expand(vimDir . '/undodir')     " directory where the undo files will be stored
    call system('mkdir ' . vimDir)                  " create dirs
    call system('mkdir ' . myUndoDir)
    let &undodir = myUndoDir
    set undofile                                    " turn on the feature
endif
