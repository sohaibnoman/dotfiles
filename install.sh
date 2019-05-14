#!/bin/bash
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
            ln -sf $(pwd)/$filname ~/;
        else
            mv $filname ~/
        fi
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
