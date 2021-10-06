#!/bin/sh
sudo pacman --noconfirm -Syu
sudo pacman --needed --noconfirm -S \
  xorg-server xorg-xinit xclip xdg-utils i3-gaps rofi \
  pipewire pipewire-alsa pipewire-pulse pavucontrol bluez blueman playerctl \
  noto-fonts noto-fonts-cjk noto-fonts-extra alacritty clang curl gnupg \
  firefox firefox-i18n-ko chromium smplayer smplayer-themes nomacs flameshot \
  telegram-desktop

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
  discord_arch_electron dropbox kime nerd-fonts-jetbrains-mono notion-app bitwarden \
  polybar psst systemd-boot-pacman-hook ttf-pretendard ttf-twemoji \
  visual-studio-code-bin zscroll-git
paru --noconfirm --clean
if [ -f "$HOME/.npmrc" ]; then
  rm -f "$HOME/.npmrc"
fi
