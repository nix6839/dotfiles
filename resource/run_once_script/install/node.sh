#!/bin/sh

mkdir "$NVM_DIR" && curl -o- 'https://raw.githubusercontent.com/nix6839/nvm/no-pager/install.sh' | \
  bash && . "$NVM_DIR/nvm.sh" && nvm install 16
