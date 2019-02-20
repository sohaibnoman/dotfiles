# Dotfiles

## Bash

for .bashrc, add last one on top of .bashrc file

```
curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh > ~/.bash_git
source ~/.bash_git
```

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
