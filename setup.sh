#!/bin/bash

(
  cd dotfiles
  for file in `ls .[^.]*`
  do
    ln -s $HOME/github/dotfiles/dotfiles/$file $HOME/$file
  done
)
