#!/bin/bash

# dotfiles
(
  cd dotfiles
  for file in `ls .[^.]*`
  do
    ln -s $HOME/github/dotfiles/dotfiles/$file $HOME/$file
  done
)

# karabiner
ln -s "$(pwd)/karabiner" ~/.config/karabiner