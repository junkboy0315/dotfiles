#!/bin/bash

DOT_FILES=(
    .gitconfig
    .hyper.js
    .zshrc
)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/github/dotfiles/$file $HOME/$file
done
