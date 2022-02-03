#!/bin/sh

mkdir "$NVM_DIR" && curl -o- 'https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh' | \
  bash && . "$NVM_DIR/nvm.sh" && nvm install --lts && npm install -g npm && \
  npm install -g typescript create-react-app nodemon npm-check-updates
