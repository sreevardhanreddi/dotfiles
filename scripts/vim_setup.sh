#!/bin/bash

source ./scripts/utils.sh

log "installing neovim from ppa"

# install neovim
apt install software-properties-common -y
add-apt-repository ppa:neovim-ppa/stable -y
apt update
apt install neovim -y

log "linking nvim config"

mkdir -p $HOME/.config
ln -sfv $HOME/.dotfiles/nvim $HOME/.config/nvim

log "follow these instructions"

echo "open nvim — LazyVim will bootstrap itself and install all plugins automatically"

echo_separator
