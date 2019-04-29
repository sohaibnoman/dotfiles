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

source ~/.bashrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall
cd .. && rm -rf dotfiles && cd ~/
