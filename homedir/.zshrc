# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL9K_MODE='awesome-patched'
export ZSH_THEME="powerlevel9k/powerlevel9k"
# export ZSH_THEME="agnoster"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
# https://github.com/bhilburn/powerlevel9k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir nvm vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time)
# colorcode test
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL9K_NVM_FOREGROUND='000'
POWERLEVEL9K_NVM_BACKGROUND='072'
POWERLEVEL9K_SHOW_CHANGESET=true
#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

plugins=(colorize compleat dirpersist autojump git history cp brew asdf z node npm yarn docker aws kubectl terraform osx laravel)

# must be after plugins or at end of file
source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# place this after nvm initialization!
autoload -U add-zsh-hook

load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use &> /dev/null
  else
    nvm use stable
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Customize to your needs...
unsetopt correct

export PATH="$HOME/.yarn/bin:$PATH"

source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

#
# # asdf
# . /usr/local/opt/asdf/asdf.sh
# . /usr/local/opt/asdf/etc/bash_completion.d/asdf.bash

# make rbenv load automatically when open Terminal
# eval "$(rbenv init -)"

# Print Session Info
#   echo 'using Node: ' $(node --version)
#   echo 'using npm: ' $(npm --version)
#   echo 'using k8s: ' $(k version)

export GPG_TTY=/dev/ttys000

# JAVA Tooling
# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"

# Go Tooling
export GOPATH=/usr/local/go/bin/go
export PATH=$PATH:$GOPATH/bin
# export KUBECONFIG=$HOME/.kind/kind-config

# Python Tooling
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# PHP Tooling
# PHP 8.2 => brew link php@8.2 --force --overwrite
export PATH="/usr/local/opt/php@8.2/bin:$PATH"
export PATH="/usr/local/opt/php@8.2/sbin:$PATH"

# Homebrew's "sbin"
export Homebrew_PREFIX=$(brew --prefix)
export PATH="/usr/local/sbin:$PATH"
source "$Homebrew_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
