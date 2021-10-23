#!/bin/sh

sudo pacman --needed --noconfirm -S rsync pkgfile
sudo pkgfile --update
git clone 'https://github.com/zsh-users/antigen' "$ADOTDIR"
