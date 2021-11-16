#!/bin/sh

# FIXME: Change install script path https://github.com/nvm-sh/nvm/pull/2637
mkdir "$NVM_DIR" && curl -o- 'https://raw.githubusercontent.com/nix6839/nvm/no-pager/install.sh' | \
  bash && . "$NVM_DIR/nvm.sh" && nvm install 16 && \
  npm install -g create-react-app serve nodemon
