#!/bin/bash

# install dependencies
sudo dnf install vim
sudo dnf install htop
sudo dnf copr enable daniruiz/flat-remix
sudo dnf install flat-remix-gnome

# make symlink for files
for file in $(pwd)/.*; do
    filename=$(basename $file)
    if [ $filename != ".git" ] && [ $filename != "." ] && [ $filename != ".." ]
    then
        if [ -d ~/$filename ]
        then
            rm -rf ~/$filename;
        fi

        if [ $filename != ".vim" ]
        then
            ln -sf "$(pwd)/$filename" ~/;
        else
            cp -R $filename ~/
        fi
    fi
done 

# compile vim and bash
source ~/.bashrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim 
vim +PluginInstall +qall

# remove folder
# cd .. && rm -rf dotfiles

# make command-t work for vim
# sudo dnf install ruby-devel
# cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t && ruby extconf.rb && make clean && make

