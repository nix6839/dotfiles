#!/bin/sh
. "$HOME/.zshenv"

export CHEZMOI_RESOURCE_PATH="$(chezmoi source-path)/resource"
export CHEZMOI_SCRIPT_PATH="$CHEZMOI_RESOURCE_PATH/run_once_script"

uncommnet() {
  sudo sed -i "s/^#$1$/$1/" "$2"
}

"$CHEZMOI_SCRIPT_PATH/prepare.sh"
