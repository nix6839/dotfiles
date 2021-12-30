#!/bin/sh

INSTALL_SCRIPT_PATH="$CHEZMOI_SCRIPT_PATH/install"

"$INSTALL_SCRIPT_PATH/distro_packages.sh"

if [ ! -d "$ADOTDIR" ]; then
  "$INSTALL_SCRIPT_PATH/zsh_plugins.sh"
fi

if [ ! -f "$XDG_DATA_HOME/nvim/site/autoload/plug.vim" ]; then
  "$INSTALL_SCRIPT_PATH/nvim_plugins.sh"
fi

if ! command -v nvm > /dev/null 2>&1; then
  "$INSTALL_SCRIPT_PATH/node.sh"
fi

"$INSTALL_SCRIPT_PATH/python.sh"

if ! command -v rustup > /dev/null 2>&1; then
  "$INSTALL_SCRIPT_PATH/rust_and_packages.sh"
fi

tmp=$(mktemp)
code --list-extensions > "$tmp"
if ! diff "$CHEZMOI_RESOURCE_PATH/code-extensions.list" "$tmp" > \
  /dev/null 2>&1; then
  "$INSTALL_SCRIPT_PATH/code_extensions.sh"
fi
rm -f "$tmp"
