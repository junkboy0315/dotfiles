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
# brew
#

echo "setting up brew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "updating brew..."
brew update

brew tap homebrew/cask-fonts

formulas=(
  circleci
  git
  go
  gpg
  nvm
  pipenv
  pyenv
  yarn
)

echo "installing brew apps..."
for formula in "${formulas[@]}"; do
    brew install $formula || brew upgrade $formula
done

cask_formulas=(
  adobe-creative-cloud
  android-studio
  bettertouchtool
  corretto
  dbeaver-community
  docker
  firefox
  font-fira-code
  font-source-han-code-jp
  gitkraken
  google-chrome
  google-drive-file-stream
  google-japanese-ime
  hyper
  i1profiler
  iterm2
  karabiner-elements
  kindle
  licecap
  logitech-control-center
  mysqlworkbench
  postman
  scroll-reverser # to use the mouse and the trackpad at a time
  spotify
  tripmode
  visual-studio-code
)

echo "installing brew cask apps..."
for cask_formula in "${cask_formulas[@]}"; do
    brew cask install $cask_formula || brew upgrade $cask_formula
done

brew cleanup
brew cask cleanup
