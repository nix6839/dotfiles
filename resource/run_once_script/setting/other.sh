#!/bin/sh
(cd "$HOME" &&
  ln -sf Dropbox/Media/Music .music && \
  ln -sf Dropbox/Media/Pictures .pictures && \
  ln -sf Dropbox/Media/Videos .videos)

sudo systemctl --global disable xdg-user-dirs-update
sudo systemctl enable bluetooth
