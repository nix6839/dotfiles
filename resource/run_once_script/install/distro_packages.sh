#!/bin/sh
sudo pacman --noconfirm -Syu
sudo pacman --needed --noconfirm -S \
  alacritty chromium clang curl firefox firefox-i18n-ko gnupg nomacs noto-fonts \
  noto-fonts-cjk noto-fonts-emoji noto-fonts-extra smplayer smplayer-themes \
  telegram-desktop ttf-jetbrains-mono xclip xdg-utils

install_makepkg() {
  url=$1
  name=$(basename "$url" .git)

  if pacman -Qi "$name" > /dev/null 2>&1; then
    return
  fi
  git clone "$url" && (cd "$name" && makepkg --noconfirm -si) && rm -rf "$name"
}

install_makepkg 'https://aur.archlinux.org/paru.git'
install_makepkg 'https://github.com/nix6839/my-fonts.git'

# Dropbox gpg key import
curl -O 'https://linux.dropbox.com/fedora/rpm-public-key.asc' && \
  gpg --import rpm-public-key.asc && rm -f rpm-public-key.asc
paru --needed --noconfirm -S \
  discord_arch_electron dropbox kime notion-app bitwarden systemd-boot-pacman-hook \
  visual-studio-code-bin
paru --noconfirm --clean
if [ -f "$HOME/.npmrc" ]; then
  rm -f "$HOME/.npmrc"
fi
