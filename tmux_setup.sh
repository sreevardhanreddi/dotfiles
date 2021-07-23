#!/bin/sh 

# install tmux and xclip and xsel to copy via mouse
apt install tmux xclip xsel -y

# # 
# rm -rf $HOME/.tmux

# clone tmux package manager
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# copy .tmux.conf 
ln -sf ./confs/.tmux.conf $HOME/.tmux.conf

echo "start tmux using the below commands to make it render fonts with powerlevel"
echo "tmux -u new -s <session_name>"
echo "tmux -u a -t <session_name>"

echo "open tmux session and follow the below steps to install the TPM:"

echo "load the conf in tmux"
echo "tmux source $HOME/.tmux.conf"
echo "install the plugins inside the .tmux.conf file"
echo "prefix + I"
echo "updated the plugins inside the .tmux.conf file"
echo "prefix + U"
echo "remove the plugins by removing the plugin in the file"
echo "prefix + u"

echo "here prefix is 'ctrl + b'"

