#!/usr/bin/env zsh
dev="$HOME/Developer/redknife"
dotfiles="$dev/dotfiles"
ohmyzsh="$HOME/Developer/oh-my-zsh"

export ZSH=$ohmyzsh

ZSH_THEME="geoffgarside"
ENABLE_CORRECTION="true"
plugins=(git autopep8 bower brew common-aliases docker encode64 Forklift git git-extras history npm osx pip python ssh-agent sublime vagrant virtualenvwrapper)

# User configuration..
source "$dotfiles/terminal/envs.sh"
source "$dotfiles/terminal/startup.sh"
source "$dotfiles/terminal/aliases.sh"
source "$dotfiles/terminal/functions.sh"
# ..User configuration

source $ZSH/oh-my-zsh.sh
