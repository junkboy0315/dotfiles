# pyenv
export PYENV_ROOT="/usr/local/var/pyenv" # save downloaded binaries into this folder
eval "$(pyenv init -)" # enable autocompletion

# pipenv
export PIPENV_VENV_IN_PROJECT=true # make venv folder into the project folder instead of user folder

# zsh
# enable fn + delete
bindkey "\e[3~" delete-char

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shota/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shota/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shota/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shota/google-cloud-sdk/completion.zsh.inc'; fi

# flutter
export PATH="$PATH:/Users/shota/flutter/bin"

# Prezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
# override default `glg` command to make it more pretty
alias glg='git log --topo-order --graph --oneline --branches'

# Golang
export PATH="$PATH:/Users/shota/go/bin"

# Homebrew
# - /opt/homebrew/bin # arm64
# - /usr/local/bin # x86
export PATH=/opt/homebrew/bin:/usr/local/bin:$PATH

# nodenv
eval "$(nodenv init -)"