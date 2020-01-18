# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm`
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# pyenv
export PYENV_ROOT="/usr/local/var/pyenv" # save downloaded binaries into this folder
eval "$(pyenv init -)" # enable autocompletion

# pipenv
export PIPENV_VENV_IN_PROJECT=true # make venv folder into the project folder instead of user folder

# zsh
# enable fn + delete
bindkey "\e[3~" delete-char
# show git branch status
PROMPT="%d %% "
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }
RPROMPT='${vcs_info_msg_0_}'
# use pushd
setopt auto_pushd
setopt pushd_ignore_dups
# colorify ls
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagacad

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shota/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shota/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shota/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shota/google-cloud-sdk/completion.zsh.inc'; fi

# flutter
export PATH="$PATH:/Users/shota/flutter/bin"