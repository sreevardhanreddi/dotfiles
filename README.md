# Dotfiles

## Configures

- zsh (with powelevel10k)
- tmux (with tpm)
- neo(vim) (with vimplug)
- and common aliases

## installs extra terminal binaries

- [bat](https://github.com/sharkdp/bat)
- [fd](https://github.com/sharkdp/fd)
- [lsd](https://github.com/Peltoche/lsd)
- [fzf](https://github.com/junegunn/fzf)

```shell

sudo -s

apt update -y && apt install curl git -y && \
    curl https://raw.githubusercontent.com/sreevardhanreddi/dotfiles/master/setup.sh | bash

```
