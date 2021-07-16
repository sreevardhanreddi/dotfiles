#!/bin/sh 

# install dependencies
apt-get install zsh curl git wget font-manager -y

# install powerline fonts for zsh
apt-get install fonts-powerline tmux

# install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

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

cp confs/* $HOME

echo "restart your terminal and setup the fonts in the terminal preferences ... "

# p10k
echo "type 'p10k' to configure your shell"
