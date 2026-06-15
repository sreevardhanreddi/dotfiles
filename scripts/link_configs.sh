#!/bin/sh

set -eu

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
DOTFILES_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
BACKUP_SUFFIX="$(date +%Y%m%d%H%M%S)"

link_config() {
    local source_path="$1"
    local target_path="$2"

    if [ ! -e "$source_path" ]; then
        echo "missing source: $source_path"
        return 1
    fi

    mkdir -p "$(dirname "$target_path")"

    if [ -e "$target_path" ] && [ ! -L "$target_path" ]; then
        local backup_path="${target_path}.backup.${BACKUP_SUFFIX}"
        echo "backing up $target_path -> $backup_path"
        mv "$target_path" "$backup_path"
    fi

    rm -f "$target_path"
    ln -s "$source_path" "$target_path"
    echo "linked $target_path -> $source_path"
}

link_config "$DOTFILES_DIR/nvim" "$HOME/.config/nvim"
link_config "$DOTFILES_DIR/confs/.tmux.conf" "$HOME/.tmux.conf"

echo
echo "Reload tmux with: tmux source-file ~/.tmux.conf"
echo "Restart Neovim, or run :source \$MYVIMRC inside Neovim."
