#!/bin/bash

# install dependencies
while true;
do
	read -p "Do you want to install dependencies for fedora? [Y/n]: " user_dep

	if [ $user_dep == "Y" ] || [ $user_dep == "y" ]
	then
		sudo dnf install vim;
        sudo dnf install htop;

        # choose icon pack
        read -p "Do you want paper-icons [1] or flat-remix-icons [2] or none [Enter]: " icons_coise
        if [ $icons_coise == "1" ]
        then 
            sudo dnf config-manager --add-repo https://download.opensuse.org/repositories/home:snwh:paper/Fedora_25/home:snwh:paper.repo && sudo dnf install paper-icon-theme
        elif [ $icons_coise == "2" ]
        then 
		    sudo dnf copr enable daniruiz/flat-remix && sudo dnf install flat-remix
        else
            echo "Your choise dosent exist no icon pack installed"
        fi

        # make command-t work for vim
        # sudo dnf install ruby-devel
        # cd ~/.vim/bundle/command-t/ruby/command-t/ext/command-t && ruby extconf.rb && make clean && make
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
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall

