# Dotfiles

## Configures
- zsh (with powelevel10k)
- tmux (with tpm)
- neo(vim) (with vimplug)
- and common aliases

## installs extra terminal binaries

- bat (https://github.com/sharkdp/bat)
- lsd (https://github.com/Peltoche/lsd)
- fd (https://github.com/sharkdp/fd)

``` shell

sudo -s

apt update -y && apt install curl git -y

curl https://raw.githubusercontent.com/sreevardhanreddi/dotfiles/master/full_setup.sh | bash

```