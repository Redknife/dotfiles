#!/usr/bin/env zsh
dev="$HOME/Developer/rs"
dotfiles="$dev/dotfiles"
ohmyzsh="$HOME/Developer/oh-my-zsh"

export ZSH=$ohmyzsh

ZSH_THEME="af-magic"
ENABLE_CORRECTION="true"
plugins=(git autopep8 bower brew common-aliases docker encode64 git git-extras npm osx pip python ssh-agent vagrant fabric last-working-dir)

# User configuration..
source "$dotfiles/terminal/envs.sh"
source "$dotfiles/terminal/startup.sh"
source "$dotfiles/terminal/aliases.sh"
source "$dotfiles/terminal/functions.sh"
# ..User configuration

source $ZSH/oh-my-zsh.sh
