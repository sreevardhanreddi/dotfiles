#!/bin/bash 

# import utils.sh file
source ./scripts/utils.sh

BIN_FOLDER=./bins

mkdir -p $BIN_FOLDER

log "installing lsd (https://github.com/Peltoche/lsd)"

LSD_RELEASE_VERSION="0.20.1"
LSD_RELEASE_FILE="lsd_${LSD_RELEASE_VERSION}_amd64.deb"

wget -c -q https://github.com/Peltoche/lsd/releases/download/$LSD_RELEASE_VERSION/$LSD_RELEASE_FILE -O $BIN_FOLDER/$LSD_RELEASE_FILE

dpkg -i $BIN_FOLDER/$LSD_RELEASE_FILE

log "setup an alias in .bash_profile alias ls='lsd'"



log "installing batcat (https://github.com/sharkdp/bat)"

BAT_RELEASE_VERSION="0.18.2"
BAT_RELEASE_FILE="bat_${BAT_RELEASE_VERSION}_amd64.deb"

wget -c -q https://github.com/sharkdp/bat/releases/download/v$BAT_RELEASE_VERSION/$BAT_RELEASE_FILE -O $BIN_FOLDER/$BAT_RELEASE_FILE

dpkg -i $BIN_FOLDER/$BAT_RELEASE_FILE

log "https://github.com/sharkdp/bat#automatic-paging"
log "alias cat='bat --paging=never'"




log "installing fd (https://github.com/sharkdp/fd)"

FD_RELEASE_VERSION="8.2.1"
FD_RELEASE_FILE="fd_${FD_RELEASE_VERSION}_amd64.deb"

wget -c -q https://github.com/sharkdp/fd/releases/download/v$FD_RELEASE_VERSION/$FD_RELEASE_FILE -O $BIN_FOLDER/$FD_RELEASE_FILE

dpkg -i $BIN_FOLDER/$FD_RELEASE_FILE




log "installing fzf (https://github.com/junegunn/fzf)"

FZF_RELEASE_VERSION="0.27.2"
FZF_RELEASE_FILE="fzf-${FZF_RELEASE_VERSION}-linux_amd64.tar.gz"

wget -c -q https://github.com/junegunn/fzf/releases/download/$FZF_RELEASE_VERSION/$FZF_RELEASE_FILE -O $BIN_FOLDER/$FZF_RELEASE_FILE

tar -xvf $BIN_FOLDER/$FZF_RELEASE_FILE

cp fzf /usr/bin

echo_separator