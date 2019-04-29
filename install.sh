#!/bin/bash

#!/bin/bash

for filname in ~/dotfiles/.*; do  
    if [ $(basename $filname) != ".git" ] && [ $(basename $filname) != "." ] && [ $(basename $filname) != ".." ]
    then 
        mv $(basename $filname) ~/$(basename $filename);
    fi
done 
