#!/bin/bash
source install_tools/cli.sh
source install_tools/symlink.sh

# git
syml .gitconfig   ~/.gitconfig

# vim
syml .vim   ~/.vim
syml .vimrc ~/.vimrc

# bash
syml .bashrc ~/.bashrc

# ideavim
syml .ideavimrc ~/.ideavimrc
