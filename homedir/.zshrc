# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
# if you want to use this, change your non-ascii font to Droid Sans Mono for Awesome
# POWERLEVEL10K_MODE='awesome-patched'
export ZSH_THEME="powerlevel10k/powerlevel10k"
# export ZSH_THEME="agnoster"
POWERLEVEL10K_SHORTEN_DIR_LENGTH=2
# https://github.com/bhilburn/powerlevel10k#customizing-prompt-segments
# https://github.com/bhilburn/powerlevel10k/wiki/Stylizing-Your-Prompt
POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(dir nvm vcs)
POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(status history time)
# colorcode test
# for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"
POWERLEVEL10K_NVM_FOREGROUND='000'
POWERLEVEL10K_NVM_BACKGROUND='072'
POWERLEVEL10K_SHOW_CHANGESET=true
#export ZSH_THEME="random"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# disable colors in ls
# export DISABLE_LS_COLORS="true"

# disable autosetting terminal title.
export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colorize zsh-z compleat dirpersist autojump git history cp brew asdf aws kubectl terraform helm)

source $ZSH/oh-my-zsh.sh

source /usr/local/opt/nvm/nvm.sh --no-use

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

# run fortune on new terminal :)
# fortune

export PATH="$HOME/.yarn/bin:$PATH"

# source /usr/local/opt/git-extras/share/git-extras/git-extras-completion.zsh

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
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
# export KUBECONFIG=$HOME/.kind/kind-config

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
