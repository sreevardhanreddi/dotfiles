#!/bin/bash

rm -rf .dotfiles && \ 
    git clone https://github.com/sreevardhanreddi/dotfiles.git $HOME/.dotfiles && \ 
    cd $HOME/.dotfiles && \ 
    ./scripts/shell_setup.sh && \
    ./scripts/tmux_setup.sh && \
    ./scripts/vim_setup.sh && \
    ./scripts/awesome_shell_utils.sh
