#!/bin/bash

source ./scripts/utils.sh

log "installing neovim build dependencies"

apt install -y ninja-build gettext cmake curl build-essential git

NVIM_VERSION="v0.11.6"

log "building neovim $NVIM_VERSION from source"

git clone https://github.com/neovim/neovim /tmp/neovim
cd /tmp/neovim
git checkout $NVIM_VERSION
make CMAKE_BUILD_TYPE=RelWithDebInfo
make install

log "linking nvim config"

mkdir -p $HOME/.config
ln -sfv $HOME/.dotfiles/nvim $HOME/.config/nvim

log "follow these instructions"

echo "open nvim — LazyVim will bootstrap itself and install all plugins automatically"

echo_separator
