#!/bin/sh 

apt-get install zsh curl git wget font-manager -y

# install powerline fonts for zsh
apt-get install fonts-powerline tmux


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

cp 'MesloLGS NF Regular.ttf' /usr/share/fonts
cp 'MesloLGS NF Bold.ttf' /usr/share/fonts
cp 'MesloLGS NF Italic.ttf' /usr/share/fonts
cp 'MesloLGS NF Bold Italic.ttf' /usr/share/fonts

# refresh font cache
fc-cache -fv

# additional install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# echo 'plugins+=(zsh-syntax-highlighting)' >> ~/.zshrc

# additional install zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# echo 'plugins+=(zsh-autosuggestions)' >> ~/.zshrc

# download p10k theme
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc

# echo 'ZSH_THEME="powerlevel10k/powerlevel10k"' >> ~/.zshrc

cp .zshrc $HOME

echo "restart your terminal and setup the fonts in the terminal preferences ... "

# p10k
echo "type 'p10k' to configure your shell"
