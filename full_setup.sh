#!/bin/sh 

rm -rf dotfiles && \ 
    git clone https://github.com/sreevardhanreddi/dotfiles.git && \ 
    cd dotfiles && \ 
    ./shell_setup.sh && \
    ./tmux_setup.sh