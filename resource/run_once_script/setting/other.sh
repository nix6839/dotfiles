#!/bin/sh
(cd "$HOME" &&
  ln -sf Dropbox/Media/Music . && \
  ln -sf Dropbox/Media/Pictures . && \
  ln -sf Dropbox/Media/Videos .)

sudo systemctl enable bluetooth
