#!/bin/bash

#
# dotfiles
#

(
  cd dotfiles
  for file in `ls .[^.]*`
  do
    ln -s $HOME/github/dotfiles/dotfiles/$file $HOME/$file
  done
)

#
# karabiner
#

if [ ! -e ~/.config/karabiner ]; then
  script_dir=$(cd $(dirname $0); pwd)
  ln -s "$script_dir/karabiner" ~/.config/karabiner
else
  echo "karabiner config folder already exists" >&2
fi

#
# mypy
#

if [ ! -e ~/.config/mypy ]; then
  script_dir=$(cd $(dirname $0); pwd)
  ln -s "$script_dir/mypy" ~/.config/mypy
else
  echo "mypy config folder already exists" >&2
fi
