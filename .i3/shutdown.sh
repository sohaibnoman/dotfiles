#!/bin/sh 

# [ $(echo -e "No\nYes") | dmenu -i -p "$1") \ == "Yes" ] && $2

ans=$(echo -e "Shutdown\nLock" | dmenu -i -p "$1")

if [ $ans == "Shutdown" ]
then
    shutdown -h now
fi

if [ $ans == "Lock" ]
then
    exec ~/dotfiles/.i3/lock.sh
fi
