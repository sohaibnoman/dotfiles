#!/bin/bash

for filname in $(pwd)/.*; do  
    if [ $(basename $filname) != ".git" ] && [ $(basename $filname) != "." ] && [ $(basename $filname) != ".." ]
    then 
        mv $(basename $filname) ~/$(basename $filename);
    fi
done 
