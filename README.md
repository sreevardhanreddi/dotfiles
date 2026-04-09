# Dotfiles

## Configures

- zsh (with powerlevel10k)
- tmux (with tpm)
- neovim (with LazyVim)
- and common aliases

## installs extra terminal binaries

- [bat](https://github.com/sharkdp/bat)
- [lsd](https://github.com/lsd-rs/lsd)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

```shell

sudo -s

apt update -y && apt install curl git -y && \
    curl https://raw.githubusercontent.com/sreevardhanreddi/dotfiles/master/setup.sh | bash

```
