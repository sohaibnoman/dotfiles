set nocompatible              " be iMproved, required
filetype off                  " required

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
syntax on
colorscheme onedark

" variables
set tabstop=4               "tab indent
set shiftwidth=4            "'>' indent
set expandtab               "make tab out of spaces
set relativenumber
set completeopt=longest,menuone
set hlsearch

" key map --
inoremap jk    <esc>
nmap cm    gc                                                                                                                                                                       61      61/
inoremap jk    <esc>                                                                                                                                                                 4       1/
nmap cm    gc                                                                                                                                                                        5       2/
nmap cmm   gcc                                                                                                                                                                       7       3/
noremap  <C-n> :NERDTreeToggle<CR>                                                                                                                                                   8       4/
nnoremap <C-u> :UndotreeToggle<CR>                                                                                                                                                   9       5/
                                                                                                                                                                                    70       6/
" map switch tab                                                                                                                                                                     1       7/
" nnoremap <C-S-tab>  :tabprevious<CR>                                                                                                                                               2       8/
" nnoremap <C-tab>    :tabnext<CR>                                                                                                                                                   3       9/
nnoremap <C-w>      :tabclose<CR>                                                                                                                                                    4      70/
nnoremap <C-h>      :tabprevious<CR>                                                                                                                                                 5       1/
nnoremap <C-l>      :tabnext<CR>                                                                                                                                                     6       2/
nnoremap <C-t>      :tabnew<CR>                                                                                                                                                      7       3/
                                                                                                                                                                                     8       4/
" open nerdtree when no file is selected on startup                                                                                                                                  9       5/
autocmd StdinReadPre * let s:std_in=1                                                                                                                                               80       6/
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif                                                                                                          1       7/
                                                                                                                                                                                     2       8/
" close NERDTree if its the last open window                                                                                                                                         4       9/
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif                                                                                5      80/
                                                                                                                                                                                     6       1/
" set persistant undo                                                                                                                                                                7       2/
" Put plugins and dictionaries in this dir (also on Windows)                                                                                                                         8       3/
let vimDir = '$HOME/.vim'                                                                                                                                                            9       4/
let &runtimepath.=','.vimDir                                                                                                                                                        90       5/
                                                                                                                                                                                     1       6/
" Keep undo history across sessions by storing it in a file                                                                                                                          2       7/
if has('persistent_undo')                           " check if your vim version supports it                                                                                          3       8/
    let myUndoDir = expand(vimDir . '/undodir')     " directory where the undo files will be stored                                                                                  4       9/
    call system('mkdir ' . vimDir)                  " create dirs                                                                                                                    5      90/
    call system('mkdir ' . myUndoDir)                                                                                                                                                6       1/
    let &undodir = myUndoDir                                                                                                                                                         7       2/
    set undofile                                    " turn on the feature                                                                                                            8       3/
endif
