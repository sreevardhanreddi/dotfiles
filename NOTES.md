## Shell

For this setup to work, you'll need powerline patched fonts. You can install it by

```shell

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

```

once the fonts are downloaded and installed, you'll need to set your terminal editors font to `MesloLGS NF Regular.ttf`

---

## Neo(Vim)

`$HOME/.vimrc` or `$HOME/.config/nvim/init.vim` are the config files for neovim, and VimPlug is the plugin manager. After the setup is done,

- open `vim` or `neovim`.
- Hit `esc + :` and type `PlugInstall`, this will install all the plugins for vim
- restart editor

---

## Tmux

`$HOME/.tmux.conf` is the config file for tmux. After the setup is done,

- open `tmux`
- Hit prefix i.e `ctrl + b` and Hit `P`, this will install all the plugins for tmux
- restart tmux
