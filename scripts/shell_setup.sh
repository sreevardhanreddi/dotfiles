#!/bin/bash 

# import utils.sh file
source ./scripts/utils.sh

log "installing zsh, tmux, ohmyzsh, fonts"

# install dependencies
apt-get install zsh curl git wget font-manager -y

# install powerline fonts for zsh
apt-get install fonts-powerline tmux

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

log "downloading and installing fonts ..."

# create fonts folder
mkdir -p fonts

# download fonts
wget -c -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf -O 'fonts/MesloLGS NF Regular.ttf'
wget -c -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf -O 'fonts/MesloLGS NF Bold.ttf'
wget -c -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf -O 'fonts/MesloLGS NF Italic.ttf'
wget -c -q https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf -O 'fonts/MesloLGS NF Bold Italic.ttf'

# copy fonts
cp fonts/* /usr/share/fonts

# refresh fonts cache
fc-cache -fv

log "installing zsh plugins, syntax highlighting, zsh autosuggestions and p10k theme"

# additional install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# echo 'plugins+=(zsh-syntax-highlighting)' >> ~/.zshrc

# additional install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# echo 'plugins+=(zsh-autosuggestions)' >> ~/.zshrc

# download p10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

# echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc

log "symlinking conf files ..."

# SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"


# symlink instead of copy
# cp -r confs/. $HOME
ln -sfv $HOME/.dotfiles/confs/.* $HOME

log "follow these instructions"

echo "restart your terminal and setup the fonts in the terminal preferences ... "
echo "remember to run export TERM=xterm-256color"
# p10k
echo "type 'p10k' to configure your shell"

echo_separator
