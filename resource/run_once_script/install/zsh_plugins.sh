#!/bin/sh
sudo pacman --needed --noconfirm -S rsync pkgfile
sudo pkgfile --update
git clone 'https://github.com/zdharma/zinit.git' "${ZINIT[BIN_DIR]}"
