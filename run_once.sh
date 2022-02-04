#!/bin/sh

. "$HOME/.zshenv"

export CHEZMOI_RESOURCE_PATH="$(chezmoi source-path)/resource"
export CHEZMOI_SCRIPT_PATH="$CHEZMOI_RESOURCE_PATH/run_once_script"
export CHEZMOI_UTIL_PATH="$CHEZMOI_SCRIPT_PATH/util"

"$CHEZMOI_SCRIPT_PATH/prepare.sh"
"$CHEZMOI_SCRIPT_PATH/install.sh"
"$CHEZMOI_SCRIPT_PATH/setting.sh"
