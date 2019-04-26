#!/bin/bash

DOT_FILES=( 
    .bash_profile
    .gitconfig
    .hyper.js
)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/github/dotfiles/$file $HOME/$file
done
