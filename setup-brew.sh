#!/bin/bash

#
# brew
#

echo "setting up brew..."
which brew >/dev/null 2>&1 || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "updating brew..."
brew update

brew tap homebrew/cask-fonts

formulas=(
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
  bettertouchtool
  corretto
  docker
  firefox
  font-cascadia-code
  font-source-han-code-jp
  gitkraken
  google-chrome
  google-drive-file-stream
  i1profiler
  karabiner-elements
  kindle
  licecap
  logitech-options
  postman
  spotify
  tableplus
  tripmode
  visual-studio-code
)

echo "installing brew cask apps..."
for cask_formula in "${cask_formulas[@]}"; do
    brew cask install $cask_formula || brew upgrade $cask_formula
done

brew cleanup
