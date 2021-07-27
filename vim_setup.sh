# install neovim
apt install software-properties-common -y
add-apt-repository ppa:neovim-ppa/stable -y
apt update
apt install neovim -y

# copy .vimrc config to init.vim at $HOME/.config/nvim
mkdir -p $HOME/.config/nvim && \
       cd $HOME/.config/nvim && \
       touch init.vim && \
       cat $HOME/.vimrc > init.vim

# todo add node setup ? for COC
# curl -sL install-node.now.sh/lts | bash


# install vimplug plugin manager
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


echo "add a plugin and install follow this guide https://www.linode.com/docs/tools-reference/tools/how-to-install-neovim-and-plugins-with-vim-plug/"

echo "

nvim
:PlugInstall
:UpdateRemotePlugins
:q!
:q!


:so %
"