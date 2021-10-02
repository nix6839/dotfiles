#!/bin/sh
sudo pacman --needed --noconfirm -S rsync pkgfile
sudo pkgfile --update
read -p "Press any key to resume ..."
git clone 'https://github.com/zdharma/zinit.git' "${ZINIT[BIN_DIR]}"
read -p "Press any key to resume ..."
