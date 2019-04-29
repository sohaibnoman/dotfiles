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

cd
rm -rf dotfiles
source .bashrc
vim +PluginInstall +qall
