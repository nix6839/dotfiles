#!/bin/sh
(cd "$HOME" &&
  ln -sf Dropbox/Media/Music . && \
  ln -sf Dropbox/Media/Pictures . && \
  ln -sf Dropbox/Media/Videos .)

sudo systemctl --global disable xdg-user-dirs-update
sudo systemctl enable bluetooth
