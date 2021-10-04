#!/bin/sh
sudo pacman --noconfirm -Syu
sudo pacman --needed --noconfirm -S \
  alacritty bluez blueman chromium clang curl firefox firefox-i18n-ko flameshot gnupg \
  i3-gaps nomacs noto-fonts noto-fonts-cjk noto-fonts-extra pulseaudio \
  pulseaudio-alsa pavucontrol rofi smplayer smplayer-themes telegram-desktop xclip \
  xdg-utils xorg-server xorg-xinit

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
  polybar systemd-boot-pacman-hook ttf-pretendard ttf-twemoji \
  visual-studio-code-bin zscroll-git
paru --noconfirm --clean
if [ -f "$HOME/.npmrc" ]; then
  rm -f "$HOME/.npmrc"
fi
