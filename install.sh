#!/bin/bash

# install dependencies
while true;
do
	read -p "Do you want to install dependencies like vim , htop, flat-remix-icons? [Y/n]: " user_dep

	if [ $user_dep == "Y" ] || [ $user_dep == "y" ]
	then
		sudo dnf install vim;
		sudo dnf install htop;
		sudo dnf copr enable daniruiz/flat-remix;
		sudo dnf install flat-remix-gnome;
        break;
    elif [ $user_dep == "N" ] || [ $user_dep == "n" ]
    then 
        break;
	fi
done

# make links for files
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

