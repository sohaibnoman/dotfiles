#!/bin/bash

for filname in $(pwd)/.*; do  
    if [ $(basename $filname) != ".git" ] && [ $(basename $filname) != "." ] && [ $(basename $filname) != ".." ]
    then
        if [ -d ~/$(basename $filname) ]
            then
                rm -rf ~/$(basename $filname);
            fi
        mv $(basename $filname) ~/;
    fi
done 

# compile vim and bash
source ~/.bashrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall

# remove folder
# cd .. && rm -rf dotfiles

# make command-t work for vim
# sudo dnf install ruby-devel
# cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t && ruby extconf.rb && make clean && make
