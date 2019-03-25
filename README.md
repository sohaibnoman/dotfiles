# Dotfiles

## Vim
To use .vimrc, Vundle needs to be installed, this can be done by the line below
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
now install all the plugins, by entering into vim and type
```
:VundleInstall
```
to make onedark work, move into the folder .vim and excecute these two commands from ~/.vim/
```
mkdir colors && cd colors && wget https://raw.githubusercontent.com/joshdick/onedark.vim/master/colors/onedark.vim
mkdir autoload && cd autoload && wget https://raw.githubusercontent.com/joshdick/onedark.vim/master/autoload/onedark.vim
```
to make command-t work, first install dependencies, then call rake make inside plugin repo
```
yum -y install gcc mysql-devel ruby-devel rubygems
rake make
```
