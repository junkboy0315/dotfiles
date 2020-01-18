#!/bin/bash

DOT_FILES=(
    .gitconfig
    .hyper.js
    .zshrc
)

cd dotfiles
for file in `ls .[^.]*`
do
  ln -s $HOME/github/dotfiles/dotfiles/$file $HOME/$file
done
